package main

import (
	"context"
	"encoding/json"
	"fmt"
	"log"
	"math/rand"
	"net/http"
	"os/exec"
	"sync"
	"time"

	"git.protei.ru/protei-golang/common/ffsm"
	"git.protei.ru/protei-golang/common/ffsm/model"
	"git.protei.ru/protei-golang/passlib"
	"git.protei.ru/protei-golang/passlib/service"
)

func main() {
	correlationId := randCorrelationId(16)
	fmt.Println(correlationId)
	//correlationId = "KUB93gVRruVYLd2c"
	filepath := "client.yaml"
	client := http.DefaultClient
	actorModel := model.GetInstanceActorModel()
	err := actorModel.RegisterService(service.UserSessionServiceName,
		/*config.GetWorkersCount(service.TEST_SERVICE_NAME, 1)*/ 1,
		ffsm.WithRouterArg(service.UserSessionServiceRouter),
		ffsm.WithCreateArg(func() ffsm.IFsmLight {
			return service.CreateUserSessionFsm(actorModel, nil, client)
		}))
	if err != nil {
		panic(err)
	}
	if err := actorModel.Start(); err != nil {
		log.Fatalf("error during start services: %s", err.Error())
	}
	var commandPrivilegesMapping map[string][]string
	var checkSessionReqsSkip []string
	pass, err := passlib.NewPassLibServiceYamlFile(actorModel, filepath, client, commandPrivilegesMapping, checkSessionReqsSkip)
	if err != nil {
		log.Fatal(err)
	}
	var wg sync.WaitGroup
	wg.Add(1)
	go startSession(pass, correlationId)
	time.Sleep(100 * time.Millisecond)
	authLink := pass.UserSessionGetAuthLink(correlationId)
	//openAuthLink(authLink)
	var args []string
	args = append(args, authLink)
	exec.Command("xdg-open", args...).Start()
	wg.Wait()
}

func randCorrelationId(n int) string {
	var src = rand.NewSource(time.Now().UnixNano())
	rand.New(src)
	var letterRunes = []rune("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890_")
	b := make([]rune, n)
	for i := range b {
		b[i] = letterRunes[rand.Intn(len(letterRunes))]
	}
	return string(b)
}

/*
	func openAuthLink(authLink string) {
		var args []string
		args = append(args, authLink)
		exec.Command("xdg-open", args...).Start()
	}
*/
func startSession(pass passlib.PassLibService, correlationId string) *passlib.UserSessionInfo {
	userinfo, err := pass.UserSessionStart(context.Background(), correlationId)
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println(json.Marshal(userinfo))
	return userinfo
}

module pass_server

go 1.22.1

replace git.protei.ru/protei-golang/common v1.8.3 => ./pkg/uc-common

replace git.protei.ru/protei-golang/passlib v1.7.4 => ./pkg/passlib

replace git.protei.ru/github/rcrowley/go-metrics v0.0.0-20221202064646-9cf500e1d006 => ./pkg/rcrowley/go-metrics@v0.0.0-20221202064646-9cf500e1d006

replace git.protei.ru/github/tchap/zapext/v2 v2.1.2 => ./pkg/tchap/zapext/v2@v2.1.2

replace git.protei.ru/github/uber-go/zap v1.20.1 => ./pkg/uber-go/zap@v1.20.4

replace git.protei.ru/github/uber-go/zap v1.20.4 => ./pkg/uber-go/zap@v1.20.4

require (
	git.protei.ru/protei-golang/common v1.8.3
	git.protei.ru/protei-golang/passlib v1.7.4
)

require (
	git.protei.ru/github/rcrowley/go-metrics v0.0.0-20221202064646-9cf500e1d006 // indirect
	git.protei.ru/github/tchap/zapext/v2 v2.1.2 // indirect
	git.protei.ru/github/uber-go/zap v1.20.4 // indirect
	github.com/AsynkronIT/protoactor-go v0.0.0-20210405044454-10bc19881ad6 // indirect
	github.com/Workiva/go-datastructures v1.0.53 // indirect
	github.com/cenkalti/backoff/v4 v4.1.1 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/deepmap/oapi-codegen v1.8.2 // indirect
	github.com/emirpasic/gods v1.12.0 // indirect
	github.com/fatih/color v1.9.0 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang-jwt/jwt v3.2.2+incompatible // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/google/uuid v1.3.1 // indirect
	github.com/gorilla/mux v1.8.1 // indirect
	github.com/grpc-ecosystem/grpc-gateway v1.16.0 // indirect
	github.com/hashicorp/errwrap v1.0.0 // indirect
	github.com/hashicorp/go-multierror v1.1.1 // indirect
	github.com/influxdata/influxdb-client-go/v2 v2.6.0 // indirect
	github.com/influxdata/line-protocol v0.0.0-20200327222509-2487e7298839 // indirect
	github.com/klauspost/compress v1.17.0 // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.16 // indirect
	github.com/mitchellh/mapstructure v1.4.1 // indirect
	github.com/orcaman/concurrent-map v0.0.0-20190107190726-7ed82d9cb717 // indirect
	github.com/pierrec/lz4/v4 v4.1.17 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/segmentio/kafka-go v0.4.42 // indirect
	github.com/serialx/hashring v0.0.0-20200727003509-22c0c7ab6b1b // indirect
	github.com/stretchr/testify v1.8.1 // indirect
	github.com/thoas/go-funk v0.9.1 // indirect
	go.opentelemetry.io/otel v1.0.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace v1.0.0-RC3 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc v1.0.0-RC3 // indirect
	go.opentelemetry.io/otel/sdk v1.0.0-RC3 // indirect
	go.opentelemetry.io/otel/trace v1.0.0 // indirect
	go.opentelemetry.io/proto/otlp v0.9.0 // indirect
	go.uber.org/atomic v1.9.0 // indirect
	go.uber.org/multierr v1.7.0 // indirect
	go.uber.org/zap v1.24.0 // indirect
	golang.org/x/exp v0.0.0-20230905200255-921286631fa9 // indirect
	golang.org/x/net v0.21.0 // indirect
	golang.org/x/sys v0.17.0 // indirect
	golang.org/x/text v0.14.0 // indirect
	google.golang.org/genproto v0.0.0-20230410155749-daa745c078e1 // indirect
	google.golang.org/grpc v1.56.3 // indirect
	google.golang.org/protobuf v1.30.0 // indirect
	gopkg.in/natefinch/lumberjack.v2 v2.0.0 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

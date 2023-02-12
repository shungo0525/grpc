## grpc server 起動
```
$ go run cmd/server/main.go
```

## grpcurl での確認
- https://zenn.dev/necocat/articles/e0a65f2da065ec
- grpc serverを起動中に下記コマンドを実行
```
$ grpcurl -plaintext localhost:8080 myapp.GreetingService/Hello

{
  "message": "Hello, !"
}
```

## 参考
- https://zenn.dev/hsaki/books/golang-grpc-starting/viewer

## MEMO
- grpc 手順

```
$ go mod init mygrpc
$ go get -u google.golang.org/grpc
$ go get -u google.golang.org/grpc/cmd/protoc-gen-go-grpc
```


- go path確認

```
$ go env GOPATH
```

- grpcurl install

```
$ brew install grpcurl
$ which grpcurl
```

- go uninstall & install
  - https://note.com/rescuenow_hr/n/n393eb1d909e9

```
$ rm -rf /usr/local/go
$ brew upgrade go
$ brew remove go
$ brew install go@1.18
```

- `go package io/fs is not in goroot` の対応
  - goのversion up
  - https://zenn.dev/m_525/scraps/989d0208a621f6

## go path
.zshrc

```
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
```

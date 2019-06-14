FROM golang:alpine AS builder
COPY . $GOPATH/src/github.com/solo-io/cake
WORKDIR $GOPATH/src/github.com/solo-io/cake/todo
RUN go build -o /go/bin/cake .

FROM alpine
COPY --from=builder /go/bin/cake /go/bin/cake
ENTRYPOINT ["/go/bin/cake"]
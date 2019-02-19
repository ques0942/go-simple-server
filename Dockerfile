FROM golang:alpine
WORKDIR /go/src/app

ENV GOPACKAGENAME=go-simple-server

RUN apk update \
  && apk add --no-cache git \
  && go get -u github.com/golang/dep/cmd/dep

COPY . /go/src/app
RUN dep ensure

RUN go build -o /go/server .
CMD ["/go/server"]


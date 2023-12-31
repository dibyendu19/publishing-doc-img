FROM golang:1.16-alpine
WORKDIR /app
COPY go.mod ./
RUN go mod download
COPY *.go ./
RUN go build -o /go-docker-demo
EXPOSE 5050
CMD ["/go-docker-demo"]

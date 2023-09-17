FROM golang:1.19-alpine
RUN mkdir /app
ADD . /app

WORKDIR /app

COPY go.mod ./
RUN go mod download

RUN go build -o ./bin/server ./cmd/main/main.go

EXPOSE 8080

CMD ["./bin/server"]
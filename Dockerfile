FROM golang:1.9-alpine

RUN apk add --no-cache ca-certificates git

COPY . .

RUN go get github.com/gin-gonic/gin
RUN go get github.com/go-telegram-bot-api/telegram-bot-api
RUN go get gopkg.in/yaml.v2
RUN go build -o /prometheus_bot

EXPOSE 9087
ENTRYPOINT ["/prometheus_bot"]

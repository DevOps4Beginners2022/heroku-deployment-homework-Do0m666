FROM golang:1.17-alpine

ARG PORT=8888

ENV PORT $PORT

ENV HOME=/home/test

WORKDIR $HOME

COPY go.mod go.sum main.go $HOME/

RUN go mod download

RUN go build -o app-server

EXPOSE $PORT

CMD ["./app-server"]

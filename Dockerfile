FROM golang:buster as builder
WORKDIR /app
ADD . .
RUN go mod init github.com/kyungseopkim/go-hello
RUN go mod tidy
RUN go build -o app
EXPOSE 8080
CMD ["./app"]

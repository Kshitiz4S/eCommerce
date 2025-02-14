FROM golang:1.24.0-alpine3.21

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod tidy

copy . .

RUN go build -o main ./main.go

RUN chmod +x main

EXPOSE 8080

CMD ["./main"]

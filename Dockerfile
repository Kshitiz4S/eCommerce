FROM golang:1.24.0-alpine3.21

WORKDIR /app

copy . .

RUN go build -o main ./main.go

RUN chmod +x main

EXPOSE 8080

CMD ["./main"]

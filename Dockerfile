FROM golang:1.15.7-buster
WORKDIR /web
COPY . .
EXPOSE 8081
CMD ["go", "run", "main.go"]

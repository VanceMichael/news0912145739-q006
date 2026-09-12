FROM golang:1.22-alpine AS build
WORKDIR /src
COPY go.mod ./
COPY . .
RUN go build -o /out/server ./cmd/server
FROM alpine:3.20
COPY --from=build /out/server /server
EXPOSE 8080
ENTRYPOINT ["/server"]

FROM golang:1.15.5-alphine
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go clean --modcache
RUN go build -o main .
CMD ["/app/main"]
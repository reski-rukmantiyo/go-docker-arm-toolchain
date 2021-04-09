# Build local Golang image
1. Clone this repository
2. build with these command
```
sudo docker build -t go-docker-arm-toolchain:1.16 .
```

# Compiling using Docker image for Golang 1.16 (from docker hub)

```bash
docker run -it --rm \
-v "$PWD":/go/src/myrepo/mypackage -w /go/src/myrepo/mypackage \
-e GOOS=linux -e GOARCH=arm -e CGO_ENABLED=1 \
-e CC=arm-linux-gnueabihf-gcc docker pull rrukmantiyo/go-docker-arm-toolchain:latest \
go build -o binary-armhf-linux

# or in one line
docker run -it --rm -v "$PWD":/go/src/myrepo/mypackage -w /go/src/myrepo/mypackage -e GOOS=linux -e GOARCH=arm -e CGO_ENABLED=1 -e CC=arm-linux-gnueabihf-gcc docker pull rrukmantiyo/go-docker-arm-toolchain:latest go build -o binary-armhf-linux
```

notes:
- Please adjust to your golang version to use this

# README
This docker image is used to compile golang apps with CGO_ENABLED

# Build local Golang image
1. Clone this repository
2. build with these command
```
sudo docker build -t go-docker-arm-toolchain:1.16 .
```

# Compiling using Docker image for Golang 1.16 for Windows 32bit

```bash
sudo docker run -it --rm \
-v "$PWD":/go/src/myrepo/mypackage -w /go/src/myrepo/mypackage \
-e GOOS=windows -e GOARCH=386 -e CGO_ENABLED=1 \
-e CC=i686-w64-mingw32-gcc rrukmantiyo/go-docker-arm-toolchain:latest \
go build -o binary-win32.exe

# or in one line
sudo docker run -it --rm -v "$PWD":/go/src/myrepo/mypackage -w /go/src/myrepo/mypackage -e GOOS=windows -e GOARCH=386 -e CGO_ENABLED=1 -e CC=i686-w64-mingw32-gcc rrukmantiyo/go-docker-arm-toolchain:latest go build -o binary-win32.exe
```

# Compiling using Docker image for Golang 1.16 for Windows 64bit

```bash
sudo docker run -it --rm \
-v "$PWD":/go/src/myrepo/mypackage -w /go/src/myrepo/mypackage \
-e GOOS=windows -e GOARCH=amd64 -e CGO_ENABLED=1 \
-e CC=x86_64-w64-mingw32-gcc rrukmantiyo/go-docker-arm-toolchain:latest \
go build -o binary-win64.exe

# or in one line
sudo docker run -it --rm -v "$PWD":/go/src/myrepo/mypackage -w /go/src/myrepo/mypackage -e GOOS=windows -e GOARCH=amd64 -e CGO_ENABLED=1 -e CC=x86_64-w64-mingw32-gcc rrukmantiyo/go-docker-arm-toolchain:latest go build -o binary-win64.exe
```

# Compiling using Docker image for Golang 1.16 for ARM 32bit

```bash
sudo docker run -it --rm \
-v "$PWD":/go/src/myrepo/mypackage -w /go/src/myrepo/mypackage \
-e GOOS=linux -e GOARCH=arm -e CGO_ENABLED=1 \
-e CC=arm-linux-gnueabihf-gcc rrukmantiyo/go-docker-arm-toolchain:latest \
go build -o binary-armhf-linux

# or in one line
sudo docker run -it --rm -v "$PWD":/go/src/myrepo/mypackage -w /go/src/myrepo/mypackage -e GOOS=linux -e GOARCH=arm -e CGO_ENABLED=1 -e CC=arm-linux-gnueabihf-gcc rrukmantiyo/go-docker-arm-toolchain:latest go build -o binary-armhf-linux
```

# Compiling using Docker image for Golang 1.16 for ARM 64bit

```bash
sudo docker run -it --rm \
-v "$PWD":/go/src/myrepo/mypackage -w /go/src/myrepo/mypackage \
-e GOOS=linux -e GOARCH=arm64 -e CGO_ENABLED=1 \
-e CC=aarch64-linux-gnu-gcc rrukmantiyo/go-docker-arm-toolchain:latest \
go build -o binary-armhf-linux

# or in one line
sudo docker run -it --rm -v "$PWD":/go/src/myrepo/mypackage -w /go/src/myrepo/mypackage -e GOOS=linux -e GOARCH=arm64 -e CGO_ENABLED=1 -e CC=aarch64-linux-gnu-gcc rrukmantiyo/go-docker-arm-toolchain:latest go build -o binary-armhf-linux
```

notes:
- Please adjust to docker tags to your golang version

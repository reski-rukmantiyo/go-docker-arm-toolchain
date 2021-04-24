FROM golang:1.16-stretch

RUN apt-get update && apt-get install -y --no-install-recommends \
		gcc-arm-linux-gnueabihf \
		gcc-aarch64-linux-gnu \
		libc6-dev-armhf-cross \
		libc6-dev-arm64-cross \
        mingw-w64 gcc-mingw-w64-x86-64 g++-mingw-w64-x86-64 binutils-mingw-w64-x86-64 mingw-w64-x86-64-dev gcc-mingw-w64-i686 g++-mingw-w64-i686 binutils-mingw-w64-i686 mingw-w64-i686-dev \
	&& rm -rf /var/lib/apt/lists/*
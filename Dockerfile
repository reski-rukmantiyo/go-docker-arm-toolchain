FROM golang:1.16-stretch

RUN apt-get update && apt-get install -y --no-install-recommends \
		gcc-arm-linux-gnueabihf \
		gcc-aarch64-linux-gnu \
		libc6-dev-armhf-cross \
		libc6-dev-arm64-cross \
	&& rm -rf /var/lib/apt/lists/*

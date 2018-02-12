build:
	docker run -v ${PWD}:/go/src/github.com/bitly/oauth2_proxy golang:1.9.4-stretch bash -c \
		"cd /go/src/github.com/bitly/oauth2_proxy \
		&& wget -O /usr/local/bin/dep https://github.com/golang/dep/releases/download/v0.3.2/dep-linux-amd64 \
		&& chmod +x /usr/local/bin/dep \
		&& dep ensure \
		&& ./dist.sh"


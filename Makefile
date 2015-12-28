NAME = mpfefferle/ansible
VERSION = 1.9.4

.PHONY: all build run

all: build

build:
	docker build -t $(NAME):$(VERSION) --rm .

run: build
	docker run --rm -it --entrypoint=/bin/bash --volume $(SSH_AUTH_SOCK):/ssh-agent --env SSH_AUTH_SOCK=/ssh-agent $(NAME):$(VERSION)

NAME      := ukos/sphinx
CONTAINER := ${NAME}:latest
LOCAL_TOP_LEVEL := $$(git rev-parse --show-toplevel)/..
DOCKER_TOP_LEVEL := /var/sphinx
DIRECTORY := -v ${LOCAL_TOP_LEVEL}:${DOCKER_TOP_LEVEL}

default: build

requirements:
	 @git --version
	 @docker --version

build: requirements
	docker build -t ${CONTAINER} .

shell: build
	docker run --rm -it --entrypoint /bin/bash ${DIRECTORY} ${CONTAINER}

html: build
	docker run ${DIRECTORY} ${CONTAINER}

latex: build
	docker run ${DIRECTORY} ${CONTAINER} latex

sphinx: html latex

dev: build
	docker run --rm -it ${DIRECTORY} ${CONTAINER} autobuild

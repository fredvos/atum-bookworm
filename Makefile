DOCKER_USERNAME ?= mokolo-org
APPLICATION_NAME ?= atum
TIMESTAMP ?= $(shell date +"%Y%m%d-%H%M%S")

build:
	docker build --no-cache --tag ${DOCKER_USERNAME}/${APPLICATION_NAME}:latest .
	docker tag ${DOCKER_USERNAME}/${APPLICATION_NAME}:latest ${DOCKER_USERNAME}/${APPLICATION_NAME}:$(TIMESTAMP)
	docker tag ${DOCKER_USERNAME}/${APPLICATION_NAME}:latest ${DOCKER_USERNAME}/${APPLICATION_NAME}:bookworm

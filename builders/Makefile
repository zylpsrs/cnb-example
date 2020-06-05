IMAGE_VERSION ?= groovy
REPO_URL_PREFIX ?= registry.ocp.zyl.io:5000/cnb-example
#REPO_URL_PREFIX ?= docker.io/zylpsrs/cnb-example
IMAGE ?= $(REPO_URL_PREFIX)-builder:$(IMAGE_VERSION)

REGISTRY_AUTH_FILE ?= ~/pull-secret-2.json

bud:
	docker pull $(REPO_URL_PREFIX)-run:$(IMAGE_VERSION) 1>/dev/null
	docker pull $(REPO_URL_PREFIX)-build:$(IMAGE_VERSION) 1>/dev/null
	pack create-builder $(IMAGE) --no-pull --builder-config ./builder.toml -v

push:
	docker push $(IMAGE)

all:
	make bud
	make push

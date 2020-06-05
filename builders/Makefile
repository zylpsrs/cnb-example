IMAGE_VERSION ?= groovy
REPO_URL_PREFIX ?= cnb-example
IMAGE ?= $(REPO_URL_PREFIX)-builder:$(IMAGE_VERSION)

all:
	pack create-builder $(IMAGE) --no-pull --builder-config ./builder.toml -v

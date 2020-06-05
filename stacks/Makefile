IMAGE_VERSION ?= groovy
REPO_URL_PREFIX ?= cnb-example

BASE_IMAGE ?= $(REPO_URL_PREFIX)-base:$(IMAGE_VERSION)
BUILD_IMAGE ?= $(REPO_URL_PREFIX)-build:$(IMAGE_VERSION)
RUN_IMAGE ?= $(REPO_URL_PREFIX)-run:$(IMAGE_VERSION)
CNB_STACK_ID ?= io.cnb.samples.stacks.$(IMAGE_VERSION)

bud-base:
	docker build -f base/Dockerfile -t $(BASE_IMAGE) base

bud-build:
	docker build -f build/Dockerfile -t $(BUILD_IMAGE) \
		--build-arg "base_image=${BASE_IMAGE}" --build-arg "stack_id=${CNB_STACK_ID}" build

bud-run:
	docker build -f run/Dockerfile -t $(RUN_IMAGE) \
		--build-arg "base_image=${BASE_IMAGE}" --build-arg "stack_id=${CNB_STACK_ID}" run

bud:
	make bud-base
	make bud-build
	make bud-run

all:
	make bud

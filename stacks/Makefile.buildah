IMAGE_VERSION ?= groovy
REPO_URL_PREFIX ?= registry.ocp.zyl.io/cnb-example
#REPO_URL_PREFIX ?= docker.io/zylpsrs/cnb-example

BASE_IMAGE ?= $(REPO_URL_PREFIX)-base:$(IMAGE_VERSION)
BUILD_IMAGE ?= $(REPO_URL_PREFIX)-build:$(IMAGE_VERSION)
RUN_IMAGE ?= $(REPO_URL_PREFIX)-run:$(IMAGE_VERSION)
CNB_STACK_ID ?= io.cnb.samples.stacks.$(IMAGE_VERSION)

BUILDAH_FORMAT ?= oci
REGISTRY_AUTH_FILE ?= ~/pull-secret-2.json

bud-base:
	buildah bud --format $(BUILDAH_FORMAT) --tls-verify=false --layers \
		--pull=false -f base/Dockerfile -t $(BASE_IMAGE) base

bud-build:
	buildah bud --format $(BUILDAH_FORMAT) --tls-verify=false --layers \
		--build-arg "base_image=${BASE_IMAGE}" --build-arg "stack_id=${CNB_STACK_ID}" \
		--pull=false -f build/Dockerfile -t $(BUILD_IMAGE) build

bud-run:
	buildah bud --format $(BUILDAH_FORMAT) --tls-verify=false --layers \
		--build-arg "base_image=${BASE_IMAGE}" --build-arg "stack_id=${CNB_STACK_ID}" \
		--pull=false -f run/Dockerfile -t $(RUN_IMAGE) run

bud:
	make bud-base
	make bud-build
	make bud-run

push:
	buildah push --tls-verify=false $(BASE_IMAGE) docker://$(BASE_IMAGE)
	buildah push --tls-verify=false $(BUILD_IMAGE) docker://$(BUILD_IMAGE)
	buildah push --tls-verify=false $(RUN_IMAGE) docker://$(RUN_IMAGE)

load:

	docker pull $(BUILD_IMAGE)
	docker pull $(RUN_IMAGE)

all:
	make bud
	make push
	make load

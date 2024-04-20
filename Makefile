# Variables
IMAGE_TAG := my-product
DOCKERFILE := Dockerfile

# Targets
linux:
	@docker build -t $(IMAGE_TAG):linux -f $(DOCKERFILE) .

arm:
	@docker build -t $(IMAGE_TAG):arm -f $(DOCKERFILE) .

macos:
	@docker build -t $(IMAGE_TAG):macos -f $(DOCKERFILE) .

windows:
	@docker build -t $(IMAGE_TAG):windows -f $(DOCKERFILE) .

clean:
	@docker rmi $(IMAGE_TAG):linux || true
	@docker rmi $(IMAGE_TAG):arm || true
	@docker rmi $(IMAGE_TAG):macos || true
	@docker rmi $(IMAGE_TAG):windows || true


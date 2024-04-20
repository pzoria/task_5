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
	@docker rmi $(IMAGE_TAG):linux 2>/dev/null || true
	@docker rmi $(IMAGE_TAG):arm 2>/dev/null || true
	@docker rmi $(IMAGE_TAG):macos 2>/dev/null || true
	@docker rmi $(IMAGE_TAG):windows 2>/dev/null || true

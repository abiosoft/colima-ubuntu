
UBUNTU_VERSION ?= 23.10
UBUNTU_CODENAME ?= mantic

NERDCTL_VERSION ?= 1.7.0
FLANNEL_VERSION ?= 1.2.0

.PHONY: all
all: cloud-images containerd

.PHONY: clean
clean:
	rm -rf dist

.PHONY: cloud-images
cloud-images:
	UBUNTU_VERSION=$(UBUNTU_VERSION) UBUNTU_CODENAME=$(UBUNTU_CODENAME) ./cloud-images.sh

.PHONY: containerd
containerd:
	NERDCTL_VERSION=$(NERDCTL_VERSION) FLANNEL_VERSION=$(FLANNEL_VERSION) ./containerd.sh

IMAGE := alpine/fio
APP:="scripts/usernetes-containerd.sh"

deploy-topology:
	bash scripts/deploy-topology.sh

deploy-chef-jenkins:
	bash scripts/deploy-chef-jenkins.sh

deploy-chef:
	bash scripts/deploy-chef.sh

deploy-libvirt:
	bash scripts/deploy-libvirt.sh

deploy-vagrant:
	bash scripts/deploy-vagrant.sh

deploy-packer:
	bash scripts/deploy-packer.sh

deploy-terraform:
	bash scripts/deploy-terraform.sh

push-image:
	docker push $(IMAGE)

.PHONY: deploy-libvirt deploy-vagrant deploy-packer deploy-terraform push-image

.ONESHELL:

up : 
	cd aws
	terraform init
	terraform apply --auto-approve

cleanup :
	cd aws
	terraform state rm module.rancher_common.helm_release.rancher_server
	terraform state rm module.rancher_common.helm_release.cert_manager
	terraform state rm module.rancher_common.rancher2_bootstrap.admin
	terraform destroy --auto-approve
	rm -rf .terraform .terraform.lock.hcl terraform.tfstate*

rebuild : cleanup up

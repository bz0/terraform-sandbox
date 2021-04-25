.PHONY: init plan apply destroy check

init: check
    @docker-compose run --rm terraform init

plan: check
    @docker-compose run --rm terraform plan

apply: check
    @docker-compose run --rm terraform apply

destroy: check
    @docker-compose run --rm terraform destroy

check:
    @docker-compose run --rm terraform fmt -recursive
    @docker-compose run --rm terraform fmt -check
    @docker-compose run --rm terraform validate
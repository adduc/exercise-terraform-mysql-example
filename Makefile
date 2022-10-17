run:
	docker compose run --rm --entrypoint sh terragrunt -c "terraform init && terraform apply --auto-approve"

reset:
	docker compose kill
	sudo rm -rf data

build: ## Build the containers
	docker swarm init

	docker stack deploy traefik --compose-file traefik.yml
	docker stack deploy http --compose-file http.yml
	docker stack deploy mysql --compose-file mysql.yml
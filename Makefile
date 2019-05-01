.PHONY: 

login:
	docker-compose run --rm node firebase login --no-localhost
use:
	docker-compose run --rm node firebase use --add
up:
	docker-compose up -d
ps:
	docker-compose ps
deploy:
	docker-compose exec node functions deploy helloWorld -S functions -H
start:
	docker-compose exec node functions start --bindHost 0.0.0.0 --host 0.0.0.0
inspect:
	docker-compose exec node functions inspect helloWorld --host 0.0.0.0 --pause true

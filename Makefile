.PHONY: 

down:
	docker-compose donw
volume:
	docker volume prune -f
pull:
	docker-compose pull
build:
	docker-compose build
up:
	docker-compose up -d
init: down volume pull build up
login:
	docker-compose run --rm node firebase login --no-localhost
use:
	docker-compose run --rm node firebase use --add
ps:
	docker-compose ps
deploy:
	docker-compose exec node functions deploy helloWorld -S functions -H
start:
	docker-compose exec node functions start --bindHost 0.0.0.0 --host 0.0.0.0
inspect:
	docker-compose exec node functions inspect helloWorld --host 0.0.0.0
exec:
	docker-compose exec node sh
down:
	docker-compose down

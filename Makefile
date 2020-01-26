.PHONY: 

down:
	docker-compose down
volume:
	docker volume prune -f
pull:
	docker-compose pull
build:
	docker-compose build
dependencies:
	docker-compose run --rm node yarn --cwd functions install --ignore-engines
up:
	docker-compose up -d
init: down volume pull build dependencies up
login:
	docker-compose run --rm node firebase login --no-localhost
use:
	docker-compose run --rm node firebase use --add
ps:
	docker-compose ps
deploy:
	docker-compose run --rm node firebase deploy
exec:
	docker-compose exec node sh

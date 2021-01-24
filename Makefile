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
	docker-compose run --rm functions yarn --cwd functions install --ignore-engines
up:
	docker-compose up -d
# init: down volume pull build dependencies up
init: down volume pull build up
login:
	docker-compose run --rm functions firebase login --no-localhost
use:
	docker-compose run --rm functions firebase use --add
ps:
	docker-compose ps
deploy:
	docker-compose run --rm functions firebase deploy
exec:
	docker-compose exec functions sh

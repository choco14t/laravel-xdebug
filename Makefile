up:
	docker-compose up -d
build:
	docker-compose build
restart:
	docker-compose restart
stop:
	docker-compose stop
down:
	docker-compose down
ps:
	docker-compose ps

.PHONY: app
app:
	docker-compose exec app ash -l
db:
	docker-compose exec db bash
db-refresh:
	docker-compose exec app php artisan migrate:refresh
migrate:
	docker-compose exec app php artisan migrate
seed:
	docker-compose exec app php artisan db:seed
test:
	docker-compose exec app vendor/bin/phpunit

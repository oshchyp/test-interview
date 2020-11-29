include .env
export

.PHONY: install
install: build composer-install readme

.PHONY: build
build: ## build environment and initialize composer and project dependencies
	docker build .docker/php7.4-fpm/ -t local/adgoal-test/php7.4-fpm:master
	docker build .docker/php7.4-composer/ -t local/adgoal-test/php7.4-composer:master
	docker build .docker/php7.4-dev/ -t local/adgoal-test/php7.4-dev:master
	docker build .docker/mysql/ --no-cache -t local/adgoal-test/mysql
	docker-compose build

.PHONY: composer-install
composer-install: ## run composer install
	docker-compose run --rm --no-deps php sh -lc 'composer install'

.PHONY: composer-update
composer-update: ## run composer update
	docker-compose run --rm --no-deps php sh -lc 'composer update'

.PHONY: readme
readme: ## show readme file
	docker-compose run --rm --no-deps php sh -lc './bin/readme'


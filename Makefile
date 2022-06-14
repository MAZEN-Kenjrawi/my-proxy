.SILENT:

.PHONY: build
build: ;
	docker-compose build

.PHONY: run
run: ;
	docker-compose up -d

.PHONY: down
down: ;
	docker-compose down -v --remove-orphans

.PHONY: reset
reset: down run;

.PHONY: server
server: ;
	docker-compose exec server sh

.PHONY: show-conf
show-conf: ;
	docker-compose exec server cat /etc/nginx/conf.d/default.conf

.PHONY: logs
logs: ;
	docker-compose logs server

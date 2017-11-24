.PHONY: start stop

start:
	docker-compose down && \
	docker-compose up -d && \
	bash initiate.sh

stop:
	docker-compose down

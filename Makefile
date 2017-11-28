.PHONY: start stop

NETWORK_NAME = mongodb-replica

start:
	make stop && \
	docker-compose -p $(NETWORK_NAME) up -d && \
	bash initiate.sh

stop:
	docker-compose -p $(NETWORK_NAME) down

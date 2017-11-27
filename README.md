# mongo-replica-compose
set up mongodb replica locally with docker compose

## How
### start
> make start

#### connect to the mongodb replica
> docker run --rm -it --network mongodbreplica_default alpine:latest
> ping rs0

### stop
> make stop

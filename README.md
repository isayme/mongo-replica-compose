# mongo-replica-compose
set up mongodb replica locally with docker compose

## How

### update /etc/hosts
```
127.0.0.1 mongo0
127.0.0.1 mongo1
127.0.0.1 mongo2
```

### start
> make start

#### connect to the mongodb replica
```
docker run --rm -it --network mongodb-replica_default alpine:latest
ping mongo0
```

### stop
> make stop

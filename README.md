## Spark in Docker

```
git clone https://github.com/ouinformatics/spark-docker

## Use docker hub image
## on first node:
./start-master

## Start worker will SSH as the current user to worker.domain.com
##  to start the worker docker container. 
./start-worker worker.domain.com master.domain.com
```

For testing purposes you can try this on a single machine to act as worker and master.


You can also build your own from the `Dockerfile`
```
docker build -t spark .
```


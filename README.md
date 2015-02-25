## Spark in Docker

```
git clone https://github.com/ouinformatics/spark-docker

## Use docker hub image
## on first node:
./start-master

## 
./start-worker worker.domain.com master.domain.com
```

You can also build your own from the `Dockerfile`
```
docker build -t spark .
```


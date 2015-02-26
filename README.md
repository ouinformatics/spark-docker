## Spark in Docker

```
git clone https://github.com/ouinformatics/spark-docker

## Use docker hub image
## on first node:
./start-master

## Create a nodes file, label master node with an m
node1 m
node2
node3
node4

## Start worker will SSH as the current user all nodes in
## `nodes` file
./start-worker 

## Kill all workers across the nodes
./start-worker -k
```

For testing purposes you can try this on a single machine to act as worker and master.


You can also build your own from the `Dockerfile`
```
docker build -t spark .
```


## Spark in Docker

```
git clone https://github.com/ouinformatics/spark-docker
cd spark-docker
docker build . -t "spark-1.2.1"
docker run -d spark-1.2.1 ./sbin/start-master.sh
```

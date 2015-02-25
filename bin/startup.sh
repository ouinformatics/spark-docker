#!/bin/bash

if [ "$MODE" == "master" ]
   then
	exec /data/spark-1.2.1/bin/spark-class org.apache.spark.deploy.master.Master
elif [ "$MODE" == "worker" ]
    then
	exec /data/spark-1.2.1/bin/spark-class org.apache.spark.deploy.worker.Worker spark://$MASTER
fi

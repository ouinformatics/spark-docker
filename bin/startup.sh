#!/bin/bash

WORKDIR=/data/spark-1.2.1
if [ "$MODE" == "master" ]
   then
	exec ${WORKDIR}/bin/spark-class org.apache.spark.deploy.master.Master
elif [ "$MODE" == "worker" ]
    then
	exec ${WORKDIR}/bin/spark-class org.apache.spark.deploy.worker.Worker spark://$MASTER
elif [ "$MODE" == "client" ]
    then 
       exec /bin/bash # ${WORKDIR}/bin/spark-shell 
fi

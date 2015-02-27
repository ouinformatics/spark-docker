#!/bin/bash

exec ./bin/spark-shell --master ${MASTER} ${SHELL_OPTIONS}

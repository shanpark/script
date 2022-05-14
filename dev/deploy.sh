#!/bin/bash

PROCESS=front
TARGET_HOST=shanpark@shanpark.ddns.net
WORK_DIR=~/shan/${PROCESS}/

scp ../build/libs/${PROCESS}-*.jar ${TARGET_HOST}:${WORK_DIR}
ssh ${TARGET_HOST} "cd ${WORK_DIR}; ./install.sh; (tail -f -n1 log/${PROCESS}.log &) | grep -q 'seconds (JVM running for'; tail -n25 log/${PROCESS}.log"
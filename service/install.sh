#!/bin/bash

PROCESS=discovery

bash ./stop.sh
mv ${PROCESS}-*.jar ${PROCESS}.jar
bash ./start.sh

#!/bin/bash

PROCESS=discovery
PROFILES=(${PROCESS}1)

if [ -f ${PROCESS}.jar ]; then
  for profile in ${PROFILES[@]}; do
  #  nohup java -Djava.security.egd=file:/dev/./urandom -Xms50m -Xmx100m -Dspring.profiles.active=${profile} -jar ${PROCESS}.jar 1>/dev/null 2>&1 &
    nohup java -Djava.security.egd=file:/dev/./urandom -Dspring.profiles.active=${profile} -jar ${PROCESS}.jar 1>/dev/null 2>&1 &
    echo "Starting ${PROCESS}..."
    echo "> java -Djava.security.egd=file:/dev/./urandom -Dspring.profiles.active=${profile} -jar ${PROCESS}.jar"
  done
  echo "Run 'tail -n 100 -f log/${PROCESS}.log' to check log."
else
  echo "'${PROCESS}.jar' file not found. Is '${PROCESS}.jar' installed?"
fi

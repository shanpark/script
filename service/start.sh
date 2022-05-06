#!/bin/bash

PROCESS=discovery
PROFILES=(${PROCESS}1)

for profile in ${PROFILES[@]}; do
#  nohup java -Xms50m -Xmx100m -Dspring.profiles.active=${profile} -jar ${PROCESS}.jar 1>/dev/null 2>&1 &
  nohup java -Dspring.profiles.active=${profile} -jar ${PROCESS}.jar 1>/dev/null 2>&1 &
  echo "> java -Dspring.profiles.active=${profile} -jar ${PROCESS}.jar"
done

echo ""
echo "Run 'tail -f log/${PROCESS}.log' to check log."

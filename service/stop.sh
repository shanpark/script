#!/bin/bash

PROCESS=discovery
PIDs=`ps -eaf | grep " ${PROCESS}.jar" | grep -v grep | awk '{ print $2 }'`

if [ -z "${PIDs}" ]; then
  echo "${PROCESS}.jar process not found."
else
  for PID in ${PIDs[@]}; do
    echo "Stopping ${PROCESS}[${PID}]... "
    kill ${PID}
  done

  while [ ! -z "${PIDs}" ]
  do
    printf "."
    sleep 1
    PIDs=`ps -eaf | grep " ${PROCESS}.jar" | grep -v grep | awk '{ print $2 }'`
  done

  echo ""
  echo "${PROCESS} has been stopped."
fi

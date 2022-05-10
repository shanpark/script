#!/bin/bash

PROCESSES=(discovery gateway auth user front report asset project wiki)

for PROCESS in ${PROCESSES[@]}; do
  cd ${PROCESS}
  bash ./stop.sh
  cd ..
  echo ""
done

for PROCESS in ${PROCESSES[@]}; do
  cd ${PROCESS}
  bash ./start.sh
  cd ..
  echo ""
done
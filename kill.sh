#!/bin/bash

SERVER_PID=$(ss -pln | grep 7934 | grep 0.0.0.0  | awk '{print $7}' | awk -F"," '{print $2}' | awk -F"=" '{print $2}')
if [ ! -z $SERVER_PID  ]; then
    kill -9 $SERVER_PID
    echo "Процесс убит"
else
    echo "Процесс не найден"
fi

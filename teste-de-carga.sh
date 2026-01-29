#!/bin/bash

SERVICE_URL="http://simple-api-service/health"
REQUESTS_PER_ROUND=20
SLEEP_TIME=1
POD_NAME="load-test"

echo "🚀 Teste de carga iniciado"
echo "URL: $SERVICE_URL"
echo "--------------------------------"

kubectl delete pod $POD_NAME --ignore-not-found

kubectl run $POD_NAME \
  --image=busybox \
  --restart=Never \
  -it --rm \
  -- sh -c "
    while true; do
      for i in \$(seq 1 $REQUESTS_PER_ROUND); do
        wget -q -O- $SERVICE_URL > /dev/null &
      done
      wait
      sleep $SLEEP_TIME
    done
  "

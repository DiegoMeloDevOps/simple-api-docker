#!/bin/bash

URL="http://localhost:30007"
CONCURRENCY=40
DURATION=180

echo "🚀 Iniciando teste de carga no HPA"
echo "👉 URL: $URL"
echo "👉 Concorrência: $CONCURRENCY"
echo "👉 Duração: ${DURATION}s"

end=$((SECONDS + DURATION))

while [ $SECONDS -lt $end ]; do
  for i in $(seq 1 $CONCURRENCY); do
    curl -s "$URL" > /dev/null &
  done
  wait
done

echo "✅ Teste finalizado"


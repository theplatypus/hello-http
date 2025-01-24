#!/bin/bash

MSG=${MSG:-"Hello dedault"}
PORT=${PORT:-8080}

echo "Serving '$MSG' on tcp/$PORT"

while true; do {
  echo -ne "HTTP/1.0 200 OK\r\nContent-Length: $(echo -n $MSG | wc -c)\r\n\r\n";
  echo -n $MSG; } | nc -l -p $PORT ;
done


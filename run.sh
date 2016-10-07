#!/bin/sh
while true; do echo -e "HTTP/1.1 200 OK\n\n$(hostname)" | nc -ll -p 8080; done

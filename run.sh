#!/bin/sh
while true; do echo -e "HTTP/1.1 200 OK\n\n$(hostname)\nVersion A" | nc -ll -p 8080; done

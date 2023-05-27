#!/bin/bash

gcc -o main main.c -lfcgi
spawn-fcgi -p 8080 ./main
nginx -g "daemon off;"
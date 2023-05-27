#!/bin/bash

sudo docker build .-t n_server
sudo docker run -d -p 80:81 -v nginx:/etc/nginx/ n_server
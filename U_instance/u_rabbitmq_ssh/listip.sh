#!/bin/bash

# docker run --name rbssh -p 15673:15672 -p 5673:5672 -p 10022:22 u_rbssh

docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' rbssh_1
docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' rbssh_2
docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' rbssh_3

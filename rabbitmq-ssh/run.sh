#!/bin/bash

# docker run --name rbssh -p 15673:15672 -p 5673:5672 -p 10022:22 u_rbssh

docker run --name rbssh_1 -h rbssh_1 -d -p 15674:15672 -p 5674:5672 -p 10024:22 u_rbssh
# docker run --name rbssh_2 -h rbssh_2 -d -p 15675:15672 -p 5675:5672 -p 10025:22 u_rbssh
# docker run --name rbssh_3 -h rbssh_3 -d -p 15676:15672 -p 5676:5672 -p 10026:22 u_rbssh

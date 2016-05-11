#!/bin/bash

function run {
docker run --name mysql -d -p 3306:3306 mysql
}

function active {
docker active mysql
}

function stop {
docker stop mysql
}

function rm {
docker rm mysql
}

$@

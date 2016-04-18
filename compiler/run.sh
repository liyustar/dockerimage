#!/bin/bash

docker run --name compiler -p 10032:22 -v "$PWD/test_proj":/root/project -d compiler

#!/bin/bash

USER=root
PASSWD=root
HOST=localhost
PORT=10032

CMD="make -C project"

SSHCMD="sshpass -p $PASSWD ssh -o StrictHostKeyChecking=no -p $PORT $USER@$HOST"

$SSHCMD $CMD

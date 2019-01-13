#!/bin/bash

exec 1> >(logger -p local0.info) 2>&1
export DOMAIN=maleriefleischman.com
export NODE_TLS_REJECT_UNAUTHORIZED=0
export NODE_ENV=development
export HTTPPORT=8080
export HTTPSPORT=8443
OF=$(date +%Y%m%d)_dev.log
cd /home/badjew/malsapp_dev/
npx forever -a -l $OF -p /home/badjew/.forever/ start ./app.js

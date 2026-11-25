#!/bin/bash
pkill -f "node app.js" || true
cd /home/ec2-user/nodeapp
npm install
nohup node app.js > output.log 2>&1 < /dev/null &

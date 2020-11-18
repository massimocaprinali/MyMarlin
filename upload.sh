#!/bin/bash
HOST=192.168.1.98

ssh -t pi@$HOST 'pm2 stop cncjs-pendant-keyboard' && \
ssh -t pi@$HOST 'pm2 stop cncjs' && \
platformio remote run --target upload && \
ssh -t pi@$HOST 'pm2 start cncjs' && \
ssh -t pi@$HOST 'pm2 start cncjs-pendant-keyboard'
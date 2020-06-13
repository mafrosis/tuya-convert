#!/bin/bash

tee /tuya-convert/config.txt > /dev/null <<EOF
WLAN=$WLAN
AP=$AP
GATEWAY=$GATEWAY
EOF

/tuya-convert/start_flash.sh

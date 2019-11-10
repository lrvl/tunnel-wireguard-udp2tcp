#!/usr/bin/env bash
#
# TUNNEL WIREGUARD UDP OVER TCP USING SOCAT
#   ___
#  / __| ___ _ ___ _____ _ _
#  \__ \/ -_) '_\ V / -_) '_|
#  |___/\___|_|  \_/\___|_|
#
#
#---CONFIGURE-START
LOCAL_UDP_PORT="51820"
LOCAL_LISTEN_TCP_PORT="587"
#---CONFIGURE-END

while true
do
socat -d tcp-l:$LOCAL_LISTEN_TCP_PORT,reuseaddr,keepalive,fork UDP4:127.0.0.1:$LOCAL_UDP_PORT
        sleep 1
done

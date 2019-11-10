#!/usr/bin/env bash
#
# TUNNEL WIREGUARD UDP OVER TCP USING SOCAT
#
#   ___ _ _         _
#  / __| (_)___ _ _| |_
# | (__| | / -_) ' \  _|
#  \___|_|_\___|_||_\__|
#
#
#---CONFIGURE-START
REMOTE_IP="YOUR.IP.GOES.HERE"
REMOTE_TCP_PORT="587"
LOCAL_LISTEN_UDP_PORT="51821"
#---CONFIGURE-END

while true
do
        socat -d -t600 -T600 -d UDP4-LISTEN:$LOCAL_LISTEN_UDP_PORT tcp4:$REMOTE_IP:$REMOTE_TCP_PORT,keepalive
        sleep 1
done

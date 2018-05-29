#!/bin/bash
if [ sudo iptables -I INPUT -p tcp --dport 111 -j DROP ]; then
	echo "port 111 closed"
fi

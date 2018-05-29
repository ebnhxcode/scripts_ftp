#!/bin/bash
zgrep -hi "Failed password for " /var/log/auth* | sed "s/invalid user //" | tr -s " " | awk '{print $11" "$9}' | sort | uniq -c | sort -rn | head -20

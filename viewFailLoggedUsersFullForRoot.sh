#!/bin/bash
cat /var/log/auth* | grep 'Failed password' | awk '{print $9 " " $11 }' | sort | uniq -c | sort -rn | head -10

#!/bin/bash
cat /var/log/auth* | grep Failed
echo ""
echo ""
cat /var/log/auth* | grep Failed | awk '{print $2 "-" $1 " " $3 "\t USUARIO: " $9 "\t DESDE: " $11}'

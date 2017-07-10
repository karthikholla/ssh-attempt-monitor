#!/bin/bash
sshCount=0
while read line; do
    sshBool=0
    if [[ "$line" = *New* ]]; then
        sshBool=1
        (( sshCount++ ))

    fi
done < /var/log/custom/ClientSsh.log
echo "There were $sshCount attempts from the AlphaClients"

#!/bin/bash

# USAGE: $0 login ssh_key
USAGE="USAGE: $0 login ssh_key
- login is the new user to add (can also be an existing one to which we append)
- ssh_key can be the actual key or a file containing the key
if it is the public key itself, quoting is optional."

user=$1
if [ "$user" == "-h" ] || [ "$user" == "--help" ] || [ "$user" == "-help" ]
then
    echo "$USAGE"
    exit 0
fi

shift
if [ -f "$1" ]
then
    ssh_key=$(head -n 1 "$1")
    mode=file
else
    ssh_key="$*"
    mode=string
fi
echo "$ssh_key" | egrep -q "ssh|rsa" || { echo "not a valid ssh_key $mode"; echo "$USAGE" && exit 1; }
test -d /home/"$user" || sudo adduser --disabled-password --gecos "For Wemux" "$user"
test -d /home/"$user"/.ssh || sudo -u "$user" mkdir /home/"$user"/.ssh/
echo "command=\"wemux pair\" $ssh_key",no-port-forwarding,no-X11-forwarding | sudo -u "$user" tee -a /home/"$user"/.ssh/authorized_keys2 > /dev/null

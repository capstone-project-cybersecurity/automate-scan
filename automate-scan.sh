#!/bin/bash

set -x

# pingsweep function

function pingsweep() {
    target=$1
    host_reachable="/tmp/reachable"

    if [ ! -f "$host_reachable" ]; then
        touch $host_reachable || echo "Failed to create file $host_reachable"
    fi

    ping -c1 $target > /dev/null 2>&1 && echo "$target is reachable" >> $host_reachable || echo "$target is down"
}

# Calling the pingsweep function and run it inside a for loop to each target=host in the loop.

echo "Starting pingsweep"

for hosts in $(cat list.txt); do
    pingsweep $hosts
done

echo "Finishing pingsweep"

echo "List of reachable hosts"

host_reachable=$(cat /tmp/reachable | awk '{print $1}')

    if [ -f $host_reachable ]; then

        echo $host_reachable | tr ' ' ' \n' | sort

        echo "Starting network scan"

        # Nmap scanning inside a loop to get all host reachables after the pingsweep (I don't care the unrechable targets at this moment)

        for scan in $host_reachable; do
            nmap -sV --script=banner $scan
        done

        # Deleting file from tmp directory

        rm -f /tmp/reachable
        echo "Finishing network scan"
    else
        echo "Error, you will need to give some URL, Domain or IP in the list.txt file"
        exit 1
    fi


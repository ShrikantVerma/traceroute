#!/bin/bash
# Program name: traceroute.sh
#date
port=5022
cat ip.txt |  while read ip
do
    echo " Traceroute of ip ------- $ip " >> traceroute.txt
    echo " " >> traceroute.txt
    traceroute -m 30 $ip $port >> traceroute.txt

done

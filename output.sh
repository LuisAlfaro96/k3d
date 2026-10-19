#!/bin/bash
date_now=$(date)
string=$(openssl rand -hex 8)
while true ; do  

echo "$date_now - $string"
sleep 5

done


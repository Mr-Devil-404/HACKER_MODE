#!/bin/bash

# Fake Virus Scan Script for HackerMode

echo -e "\033[1;31m[+] Starting Virus Scan...\033[0m"
sleep 1
for i in {1..5}; do
    echo -e "\033[1;33m[Scanning] File_$i.sys\033[0m"
    sleep 0.8
done
sleep 1
echo -e "\033[1;32m[✔️] No threats found. System Secure!\033[0m"
sleep 1

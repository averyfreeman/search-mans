#!/usr/bin/env bash
for i in /usr/share/man /usr/local/share/man; do ls -1R "$i" | grep "$1" | cut -d "." -f1; done


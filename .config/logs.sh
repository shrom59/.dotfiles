#!/bin/bash
urxvtc -e bash -c "while true; do dmesg -T; sleep 30; done" & urxvtc -e bash -c "while true; do journalctl -xb -f; done"

#!/bin/bash
urxvtc -e bash -c "dmesg -T -L -w" & urxvtc -e bash -c "journalctl -xb -f"

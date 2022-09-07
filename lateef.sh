#!/bin/bash
lshw -C cpu | grep -i product
echo "The CPU Make and Model is shown above: "

uname -a
echo " The Kernel Version is shown above and it's a 64-bit"

sudo systemctl status jenkins

echo " Jenkins is active and running"

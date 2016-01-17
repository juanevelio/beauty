#! /bin/bash
DEVICE=`ls -l /dev/serial/by-id | grep ttyUSB0`
[[ $DEVICE =~ "Silicon"  ]] && sudo cp -a /dev/ttyUSB0 /dev/ttyUSB2
[[ $DEVICE =~ "FTDI"  ]] && echo "IMU is in /dev/ttyUSB0"

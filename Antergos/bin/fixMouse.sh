#!/bin/bash

set -ex

getDevice=$( xinput | grep DLL06E4:01)
UncutDevice=$(echo $getDevice | cut -d '=' -f 2)
device=${UncutDevice:0:2}
xinput --set-button-map $device 1 2 3 
properties=$(xinput list-props $device | grep "Synaptics Scrolling Distance")
echo $device
echo $properties
Sub=$(echo $properties | cut -d '(' -f 2)
number=$(echo $Sub | cut -d ')' -f 1)
echo number=$number
valueTwo=$(echo $Sub | cut -d ' ' -f 2)
echo valTwo=$valueTwo
echo "xinput set-prop $device $number -$valueTwo -$valueTwo"
xinput set-prop $device $number -$valueTwo -$valueTwo

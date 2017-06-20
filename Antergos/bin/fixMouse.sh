device=15
xinput --set-button-map $device 1 3 2 
properties=$(xinput list-props $device | grep "Synaptics Scrolling Distance")
echo $device
echo $properties
Sub=$(echo $properties | cut -d '(' -f 2)
number=$(echo $Sub | cut -d ')' -f 1)
echo number=$number
valueTwo=$(echo $Sub | cut -d ' ' -f 2)
echo valTwo=$valueTwo
xinput set-prop $device $number -$valueTwo -$valueTwo
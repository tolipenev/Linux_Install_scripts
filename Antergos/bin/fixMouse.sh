device=13
xinput --set-button-map $device 1 3 2 
properties=$(xinput list-props $device | grep "Scrolling Distance")
echo $device
echo $properties
number=${properties:31:3}
echo $number
valueOne=${properties:37:2}
echo $valueOne
valueTwo=${properties:41:2}
echo $valueTwo
xinput set-prop $device $number -$valueOne -$valueTwo
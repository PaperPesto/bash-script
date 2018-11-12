# Script bash per accendere e spengere un led da terminale
echo Running bash script...

# Assegnazione variabili
gpio_pin=$1
delay_time=$2
echo Switching on/off led on GPIO $gpio_pin with $delay_time seconds of delay

echo "Setting pin $gpio_pin for writing out"
gpio mode $gpio_pin out 

# Ciclo while - done. La condizione di loop è 1 (True) o 0 (False)
# sleep attende x secondi

while true;
	do
	echo Turning on
	gpio write $gpio_pin 1
	sleep $delay_time
	echo Turning off
	gpio write $gpio_pin 0
	sleep $delay_time
done

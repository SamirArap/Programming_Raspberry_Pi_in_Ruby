require 'rpi_gpio'

# :board numbering refers to the physical pin numbers on the Pi
RPi::GPIO.set_numbering :board

RPi::GPIO.setup 7, as: :output 	# set pin 7 for output
RPi::GPIO.setup 11, as: :output # set pin 11 for output
RPi::GPIO.setup 13, as: :output # set pin 13 for output

i=0
while i<=5
	RPi::GPIO.set_high 7	# pin 7 high and LED is on
	RPi::GPIO.set_low 11 	# pin 11 low and LED is off
	RPi::GPIO.set_low 13 	# pin 13 low and LED is off
	sleep 1					# sleep one sec
	RPi::GPIO.set_low 7
	RPi::GPIO.set_high 11
	RPi::GPIO.set_low 13
	sleep 1
	RPi::GPIO.set_low 7
	RPi::GPIO.set_low 11
	RPi::GPIO.set_high 13
	sleep 1

	i+=1
end

RPi::GPIO.reset 			# set all pins on low

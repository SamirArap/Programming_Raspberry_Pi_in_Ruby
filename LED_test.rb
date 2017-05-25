require 'rpi_gpio'

# :board numbering refers to the physical pin numbers on the Pi
RPi::GPIO.set_numbering :board

# Set pin 7 as output
RPi::GPIO.setup 7, as: :output

i=0
while i<=5
	RPi::GPIO.set_high 7 	# pin 7 high and LED is on
	sleep 1					# sleep one sec
	RPi::GPIO.set_low 7		# pin 7 off and LED is off
	sleep 1					# sleep one sec	

	i+=1
end

RPi::GPIO.reset 			#set all pins on low
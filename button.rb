require 'rpi-gpio'

# :board numbering refers to the physical pin numbers on the Pi
RPi::GPIO.set_numbering :board 

RPi::GPIO.setup 33, as: :input # set pin 33 for input

loop do 
	RPi::GPIO.high? 33 ? print "Open!" : print "Closed!"
end

RPi::GPIO.reset 				# set all pins on low
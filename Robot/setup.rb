RPi::GPIO.set_numbering :board
Curses.stdscr.keypad(true)

RPi::GPIO.setup 7, as: :output
RPi::GPIO.setup 11, as: :output
RPi::GPIO.setup 13, as: :output
RPi::GPIO.setup 15, as: :output 

RPi::GPIO.set_low 7
RPi::GPIO.set_low 11
RPi::GPIO.set_low 13
RPi::GPIO.set_low 15 
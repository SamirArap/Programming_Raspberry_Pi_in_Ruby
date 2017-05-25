require 'rpi_gpio'        #gem 
require 'curses'          #gem
require 'twitter'
# install gem figaro

require_relative 'setup'  #setup RPi::GPIO
require_relative 'robot'  #class for setting pins
require_relative 'envdb'
require_relative 'tweet'

loop do

  char = Curses.getch

  case char
    when 259        #up
      Robot.up
    when 258        #down 
      Robot.down
    when 261        #right
      Robot.right
    when 260        #left  
      Robot.left
    when 10         #enter
      Robot.stop
    when 'r'        #turn right in same place for 90 degree
      Robot.right90
    when 'l'        #turn left in same place for 90 degree
      Robot.left90  
    when 'c'        #take photo from RPi camera and tweet with any hashtag
      puts "\nPhoto"
      Tweet.raspi_photo
    when 'q'        #quit
      puts "\nSee you soon!"
      sleep 2
      break
  end 
end

RPi::GPIO.reset     #set all pins on low
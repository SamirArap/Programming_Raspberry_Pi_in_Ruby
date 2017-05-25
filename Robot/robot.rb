class Robot
  def self.up
    RPi::GPIO.set_high 7
    RPi::GPIO.set_low 11
    RPi::GPIO.set_low 13
    RPi::GPIO.set_high 15
  end

  def self.down
    RPi::GPIO.set_low 7
    RPi::GPIO.set_high 11
    RPi::GPIO.set_high 13
    RPi::GPIO.set_low 15
  end

  def self.right
    RPi::GPIO.set_high 7
    RPi::GPIO.set_low 11
    RPi::GPIO.set_high 13
    RPi::GPIO.set_low 15
  end

  def self.left
    RPi::GPIO.set_low 7
    RPi::GPIO.set_high 11
    RPi::GPIO.set_low 13
    RPi::GPIO.set_high 15
  end

  def self.right90
  end

  def self.left90
  end

  def self.stop
    RPi::GPIO.set_low 7
    RPi::GPIO.set_low 11
    RPi::GPIO.set_low 13
    RPi::GPIO.set_low 15
  end
end

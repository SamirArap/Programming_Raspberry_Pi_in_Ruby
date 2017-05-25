class Tweet

  def self.raspi_photo
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["consumer_key"]
      config.consumer_secret     = ENV["consumer_secret"]
      config.access_token        = ENV["access_token"]
      config.access_token_secret = ENV["access_token_secret"]
    end

    system 'raspistill -vf -hf -o image.jpg'
    sleep 10

    message = "Programming Raspberry Pi Robots in Ruby #WeAreNetworks #klikaba #Raspberry_Pi #Ruby @Raspberry_Pi"
    filename = "/home/pi/Ruby_Examples/Robot/image.jpg"

    client.update_with_media(message, File.new(filename))

    puts "\nCompleted."
  end
end
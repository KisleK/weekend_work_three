# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Remote
  def initialize(tv)
    @tv
  end
  
  def toggle_power
    if power == "ON"
        return "OFF"
    else power =="OFF"
        return "ON"
    end
  end

  def increment_volume
    increment_volume = volume + 1
  end

  def decrement_volume
    decrement_volume = volume - 1
  end

  def set_channel
    set_channel = channel
  end

end


class TV < Remote
  
  def initialize(power, volume, channel)
    @power = power
    @volume = volume
    @channel = channel
  end

  def power
    @power
  end

  def volume
    @volume
  end

  def channel
    @channel
  end

end

#Driver Code#


tv = TV.new(power = "ON", volume = 15, channel = 555)

result = tv.toggle_power
puts "Power the Tv.."
puts result

if result == "OFF"
  puts "PASS!"
else
  puts "F"
end 

result = tv.increment_volume
puts "Volume go up"
puts result

if volume == 16
  puts "PASS"

else 
  puts "Not Quite"
end

puts "Volume go down"
puts result

result = tv.decrement_volume
if volume == 14
  puts "Pass"
else
  puts "Nope"
end


result = tv.channel(100)
puts "Set Channel"

puts result

if channel == 100
  puts "pass"
else
  puts "F"
end





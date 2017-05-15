# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

puts "Testing hotel Reservation"
## create a new instance

reservation = HotelReservation.new({customer_name: "Kyle", date: "5/14/2017", room_number: "502"})

puts "Testing add_a_crib"

#utilize above method to add a crib
#Utilize.include? to see if the new array has the specific added amenity

results = reservation.add_a_crib
puts "Your method returned......."

p results

if reservation.amenities.include?("crib")
  puts "Pass"
else
  puts "Not Quite"
end


puts "Testing add_a_fridge"
results = reservation.add_a_fridge
puts "Your method returned......."

p results

if reservation.amenities.include?("fridge")
  puts "Pass!"
else 
  puts "Not quite"
end

# puts "Testing add_a_custom_amenity..."
results = reservation.add_a_custom_amenity("Couch")
puts "Your Method returned...."

p results

if reservation.add_a_custom_amenity.amenities.include?("Couch")

  #stuck here 

  puts "Pass"
else
  puts "Nope!"
end
##also struggling with the  room number
p reservation




# reservation.add_a_fridge
# p reservation
# reservation.add_a_custom_amenity("Couch")
# p reservation



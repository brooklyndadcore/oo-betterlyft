require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
sophie = Passenger.new("sophie")
todd = Passenger.new("todd")
clair = Passenger.new("clair")
matt = Passenger.new("matt")
bill = Driver.new("bill")
matty = Driver.new("matty")
cindy = Driver.new("cindy")
Ride.new(bill, clair, 10.0)
Ride.new(bill, matt, 12.0)
Ride.new(matty, clair, 10.0)
Ride.new(cindy, matt, 10.0)
Ride.new(bill, sophie, 10.0)
Ride.new(matty, todd, 10.0)
Ride.new(bill, clair, 10.0)
Ride.new(cindy, clair, 10.0)
Ride.new(bill, clair, 10.0)
Ride.new(matty, clair, 10.0)
Ride.new(cindy, clair, 10.0)
Ride.new(matty, clair, 10.0)
Ride.new(bill, clair, 10.0)
Ride.new(bill, clair, 10.0)
Ride.new(bill, clair, 10.0)

p clair.drivers

# binding.pry
##s

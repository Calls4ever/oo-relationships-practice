require 'pry'
require_relative './passenger.rb'
require_relative './driver.rb'
require_relative './ride.rb'

# You are building an app for a Lyft/Uber competitor

# your models are passengers, drivers, rides
# a passenger has many rides
# a passenger is initialized with a name
# a driver has many rides
# a driver is initialized with a name
# a ride belongs to a passenger and a driver
# a ride is initialized with a distance (as a float)
# Write out the relationships using has_many, belongs_to and has_many_through.

# Complete the following deliverables. You may choose to make additional helper methods if you find them useful.

#passenger list
ps0=Passenger.new("Alice")
ps1=Passenger.new("Bob")
ps2=Passenger.new("Charlie")
ps3=Passenger.new("Diana")
ps4=Passenger.new("Emely")
ps5=Passenger.new("Franklin")
ps6=Passenger.new("George")
ps7=Passenger.new("Heidy")
ps8=Passenger.new("Illisia")
ps9=Passenger.new("John")
ps00=Passenger.new("Kendar")
ps01=Passenger.new("Lucy")

#driver list
dv0=Driver.new("Marilla")
dv1=Driver.new("Benjamin")
dv2=Driver.new("Michael")
dv3=Driver.new("Andrew")
dv4=Driver.new("Alishia")

#ride list

rd0=Ride.new( ps0, dv0,6.0)
rd1=Ride.new( ps1, dv0,6.9)
rd2=Ride.new( ps2,dv0, 7.0)
rd3=Ride.new( ps3, dv0,5.80)
rd4=Ride.new( ps4,dv0, 9.80)
rd5=Ride.new( ps5, dv0,16.70)
rd6=Ride.new( ps6, dv0,234.06)
rd7=Ride.new( ps7,dv0, 29.60)
rd8=Ride.new( ps8, dv0, 16.40)
rd9=Ride.new( ps9,dv0, 12.50)
rd01=Ride.new( ps00, dv0, 147.60)
rd02=Ride.new( ps01, dv0, 30.0)
rd03=Ride.new( ps0,dv1, 23.0)
rd04=Ride.new( ps0, dv2, 5.0)
rd05=Ride.new( ps0, dv3,7.0)
rd06=Ride.new( ps0, dv4,11.0)
rd07=Ride.new( ps3, dv2,5.0)
rd08=Ride.new( ps4,dv3,  7.0)
rd09=Ride.new( ps6, dv4,11.0)
rd00=Ride.new( ps9,dv2, 5.0)
rd001=Ride.new( ps00, dv3,7.0)
rd002=Ride.new(ps01, dv4,  111.0)

binding.pry



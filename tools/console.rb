require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
#Guest list
gst0=Guest.new("tsering")
gst1=Guest.new("Dolma")
gst2=Guest.new("Kapee")
gst3=Guest.new("Kalsang")
gst4=Guest.new("Tashi")
gst5=Guest.new("Gonpo")

#listing list
ls0=Listing.new("Golden Palace", "Chicago")
ls1=Listing.new("Silver Palace", "San Diago")
ls2=Listing.new("Diamond Palace", "New York")
ls3=Listing.new("Platnium Palace", "New York")
ls4=Listing.new("Lost Paradise", "San Fresinsco")
#Trip list
tp0=Trips.new(gst0, ls1)
tp1=Trips.new(gst3, ls1)
tp2=Trips.new(gst2, ls1)
tp3=Trips.new(gst0, ls0)
tp4=Trips.new(gst0, ls3)
tp5=Trips.new(gst0, ls4)
tp6=Trips.new(gst5, ls1)
tp7=Trips.new(gst4, ls1)
tp8=Trips.new(gst4, ls2)
tp9=Trips.new(gst3, ls3)
tp11=Trips.new(gst3, ls4)
tp12=Trips.new(gst2, ls3)

binding.pry

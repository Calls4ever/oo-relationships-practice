require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
<<<<<<< HEAD
#ingredient list
in0=Ingredient.new("salt",30)
in1=Ingredient.new("sugar",130)
in2=Ingredient.new("flour",60)
in3=Ingredient.new("salt",30)
in4=Ingredient.new("water",10)
in5=Ingredient.new("chocolate",120)
in6=Ingredient.new("peanut butter",210)
in7=Ingredient.new("peanut",170)
in8=Ingredient.new("chocolate syrup",190)
in9=Ingredient.new("chocolate sprinkle",90)
in0=Ingredient.new("milk",130)
in01=Ingredient.new("cream",150)
in02=Ingredient.new("heavy cream",180)
in03=Ingredient.new("nuts",70)
in04=Ingredient.new("sesmen seed",20)

#dessert list
ds0=Dessert.new("Donut",in9)
ds1=Dessert.new("Donut",in3)
ds2=Dessert.new("Donut",in4)
ds3=Dessert.new("Donut",in5)
ds4=Dessert.new("Donut",in6)
ds5=Dessert.new("Donut",in02)
ds6=Dessert.new("Donut",in8)
ds7=Dessert.new("Donut",in04)


#bakery list

bk0=Bakery.new("Donkey Donut", "ny", ds3)
bk2=Bakery.new("Donkey Donut", "ny", ds5)
bk3=Bakery.new("Donkey Donut", "ny", ds6)
bk4=Bakery.new("Donkey Donut", "ny", ds7)
bk5=Bakery.new("Donkey Donut", "ny", ds1)

=======
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
>>>>>>> 8cb809fe8846bac7630db6e4f890a234f772e8cf

binding.pry

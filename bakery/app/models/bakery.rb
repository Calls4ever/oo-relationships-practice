
class Bakery
# Bakery
@@all=[]
attr_accessor :ingredient, :dessert
# #ingredients
# should return an array of ingredients for the bakery's desserts
# #desserts
# should return an array of desserts the bakery makes
def initialize(name, location, dessert)
    @dessert=dessert
    @name=name
    @location=location
    @@all << self
end
def self.all
    # .all
    # should return an array of all bakeries
    @@all
end

def average_calories
# #average_calories
# should return a number totaling the average number of calories for the desserts sold at this bakery
count=0
calory=0
@@all.each do |bake|
   calory += bake.dessert.ingredient.calory
   count +=1
    end
calory/count
end

def shopping_list
# #shopping_list
# should return a string of names for ingredients for the bakery
ingredients = ""
all.each do |bake|
    ingredients +=" "+ bake.dessert.ingredient.name
        end
    end
end


class Dessert
    # Desserts
    @@all=[]
    attr_accessor :name, :ingredient
    # #ingredients
    # should return an array of ingredients for the dessert
    def initialize(name, ingredient)
        @name=name
        @ingredient=ingredient
        @@all<<self
    end
    def self.all
        # .all
        # should return an array of all desserts
        @@all
    end

    def bakery
        # #bakery
        # should return the bakery object for the dessert
        all.select do |baker|
        baker.dessert==self
        end
    end

    def calories
        # #calories
        # should return a number totaling all the calories for all the ingredients included in that dessert
        calory=0
        all.each do |bake|
            if bake.dessert==self
           calory+= bake.dessert.ingredient.calory
           end
        end
        calory
    end

        
end

class Ingredient

        # Ingredients
        @@all=[]
        attr_accessor  :name, :calory
        def initialize(name, calory)
            @name=name
            @calory=calory
            @@all << self
        end

        def self.all
            # .all
            # should return an array of all ingredients
            @@all
        end

        def dessert
            # #dessert
            # should return a dessert object for that ingredient
            Dessert.all.select do |des|
                des.ingredient==self
            end
        end

        def bakery
        # #bakery
        # should return the bakery object for the bakery that uses that ingredient
        Bakery.all.select do|bake|
            bake.dessert.ingredient==self
            end
        end

        def find_all_by_name(ingredient)
        
        # .find_all_by_name(ingredient)
        # should take a string argument return an array of all ingredients that include that string in their name
        # .find_all_by_name('chocolate') might return ['chocolate sprinkles', 'chocolate mousse', 'chocolate']
        # make sure you aren't just looking for exact matches (like 'chocolate' == 'chocolate')
           array=[] 
        all.each do |ing|
           if ing.name.include?(ingredient)
            array<<ing.name
           end
        end
        array
    end
end
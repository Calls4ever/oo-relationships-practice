require_relative './movies.rb'
class Show
    # Show
    @@all=[]
    attr_accessor :name, :episodes
    def initialize(name)
        @name=name
        @episodes=[]
        @@all << self
    end
    def self.all
        @@all
    end
    def add=any
        episodes << any
    end

    def on_the_big_screen
        # #on_the_big_screen
        # should return Movies that share the same name as this Show
        big_screen=[]
       all.each do |sh|
            Movies.all.each do |mv|
                if mv.title==sh.name
                    big_screen<<mv
                 end
             end
        end
    big_screen
    end

end
class Movies
    # Movie
    @@all=[]
    attr_accessor :title, :director, :actor
    def initialize( title, director)
        @title=title
        @director=director
        @actor=[]
    end
    def self.all
        @@all
    end
    def add=any
        actor << any
    end

    def self.most_actors
        # .most_actors
        # should return the movie which has the most actors in it.
        count=0
        expensive=nil
        no_next=''
        all.each do |movie|
           if movie.actor.count>0
            count=movie.actor.count
            expensive=movie
            no_next=movie.director
           end
        end
    end
end

class Actor
    # Actor
    attr_accessor :name, :character
    @@all=[]
    def initialize(name)
        @name=name
        @character=[]
        @@all << self
    end
    def self.all
        @@all
    end
    def add=any
        character << any
    end

    def self.most_characters
    # .most_characters
    # should return which actor has the most different characters played. (probably meryl streep)
        hard_worker=nil
        counter=0
        all.each do |act|
           if act.character.count>counter
            counter=act.character.count
            hard_worker=act
           end
        end

    end
end
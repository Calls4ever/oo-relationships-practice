
require_relative './movies.rb'
require_relative './shows.rb'
class Character
    # Character
    @@all=[]
    attr_accessor :name
    def initialize(name)
        @name=name
        @@all << self
    end
    def self.all
        @@all
    end

    def self.most_appearances
        # .most_appearances
        # should return which character of film/television appears in the most films or tv shows
        most_appear=nil
        appearance=0
        counter=0
        all.each do|ch|
            Movies.all.each do |mov|
                    mov.actor.each do |act|
                        act.character.each do |mch|
                            if ch==mch
                                counter +=1
                            end
                        end
                    end
            
                end
         
            Show.all.each do |sh|
                sh.episodes.each do |ep|
                        ep.actor.each do |act|
                             if act.character==ch
                                
                                    counter +=1
                                
                            end
                        end
                    
                 end
            end

            if appearance < counter
                appearance=counter
                most_appear=ch
            end
        end
        most_appear
    end
end
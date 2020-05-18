
class Passenger
#Passenger
@@all = []
attr_accessor :name, :rides
        #name 
        # returns the name of the passenger
        # #rides
        # returns all rides a passenger has been on
    def initialize(name)
        @name=name
        @@all << self
    end

    def drivers
        # #drivers
        # returns all drivers a passenger has ridden with
        dr=[]
        Ride.all.each do |drive|
           if drive.passenger==self
            dr << drive.driver 
        end
        
    end
    dr
end

    def self.all
        
        # .all
        # returns an array of all passengers
        @@all
    end
    
    def total_distance
        # #total_distance
        # should calculate the total distance the passenger has travelled with the service
        distance=0
        Ride.all.each do |drive|
            if drive.passenger==self
                distance += drive.distance
            end
        end
        distance
    end

    def self.premium_members
        # .premium_members
        # should find all passengers who have travelled over 100 miles with the service
        pas=[]
        Ride.all.each do |drive|
            if drive.passenger.total_distance >100
                pas<< drive.passenger
            end
        end
        pas.uniq
    end

end
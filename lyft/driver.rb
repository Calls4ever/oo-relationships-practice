        
       class Driver 
        # Driver
        @@all=[]
        attr_reader :name, :passenger, :ride
        # #name
        # returns the name of the driver
        def initialize(name)
            @name=name
            @@all << self
        end

        def self.all
         # .all
        # returns an array of all drivers
        @@all
        end


        
        def rides
        # #rides
        # returns all rides a driver has made
            Ride.all.select do |drive|
                drive.driver==self
            end
        end

        def passengers
        # #passengers
        # returns all passengers a driver has had
        pas=[]
        Ride.all.each do |drive|
            if drive.driver==self
                pas << drive.passenger
            end
        end
        pas.uniq
    end

    def 
        distance_driven
        distance=0
        Ride.all.each do |drive|
            if drive.driver==self
                distance +=drive.distance
            end
        end
        distance
    end

        def self.mileage_cap(distance)
            # .mileage_cap(distance)
            # takes an argument of a distance (float) and 
            #returns all drivers who have exceeded that mileage
            driver=[]
            drive_distance=0
            Ride.all.each do |drive|
                if drive.driver.distance_driven > distance
                    driver << drive.driver
                end
            end
            driver.uniq
        end
        
        
    end
    
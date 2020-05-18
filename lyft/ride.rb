
class Ride
    # Ride
    @@all=[]
    attr_accessor :passenger, :driver, :distance
    # #passenger
        # returns the passenger object for that ride
    # #driver
        # returns the driver object for that ride
     # #distance
        # returns the distance travelled for that ride
    def initialize(passenger, driver, distance)
        @passenger=passenger
        @driver=driver
        @distance=distance
        @@all << self
    end

    def self.average_distance
        # .average_distance
        # should find the average distance of all rides
        dis=0
        counter=0
        Ride.all.each do |drive|
            dis +=drive.distance
            counter +=1
        end
        dis/counter
    end
    def self.all
        @@all
    end

end
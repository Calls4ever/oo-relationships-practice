
class Trips
    # Trip
    @@all=[]
    # #listing
    # returns the listing object for the trip

    # #guest
    # returns the guest object for the trip 
    attr_accessor :guest, :listing
    
    def initialize(guest, listing)
        @guest=guest
        @listing=listing
        @@all << self
    end
    def self.all
        # .all
        # returns an array of all trips
        @@all
    end

end






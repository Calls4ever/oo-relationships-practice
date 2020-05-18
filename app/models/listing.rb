

class Listing
    # Listing
    @@all=[]
    attr_accessor :name, :city, :price, :trips, :guest
    def initialize(name, city)
        @name=name
        @city=city
        @@all << self
    end
    def self.all
        # .all
        # returns an array of all listings
        Trips.all.map do |trip|
            trip.listing
        end.uniq

    end
    def guests
    # #guests
    # returns an array of all guests who have stayed at a listing
    gst=[]
    Trips.all.each do |trip|
        
            if trip.listing == self
                gst<<trip.guest
             end
        end
        gst
    end

    def trips
        # #trips
        # returns an array of all trips at a listing
        Trips.all.select do |trip|
            if trip.listing==self
                trip
            end
        end
    end
    def trip_count
        # #trip_count
        # returns the number of trips that have been taken to that listing
        count=0
        Trips.all.each do |trip|
            if trip.listing==self
                count +=1
            end
        end
        count
    end

    def self.find_all_by_city(city)
    
        #.find_all_by_city(city)
        # takes an argument of a city name (as a string) and returns all the listings for that city
        lis=[]
        Trips.all.each do |trip|
            if trip.listing.city==city
                lis<<trip.listing
            end
        end
        lis
       
    end
    def self.most_popular
    # .most_popular
    # finds the listing that has had the most trips
    popular=nil
    popular_count=0
    Trips.all.each do |trip|
       if trip.listing.trip_count > popular_count
        popular_count=trip.listing.trip_count
        popular=trip.listing
       end
    end
    popular
 end


end







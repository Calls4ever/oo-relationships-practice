
class Guest
        # Guest
        attr_accessor :name, :trips
        def initialize(name)
            @name=name 
        end

        def listings
            # #listings
            # returns an array of all listings a guest has stayed at
            lis=[]
            Trips.all.each do |trip|
               if trip.guest==self
                lis<<trip.listing
                end
            end
            lis
        end

        def trips
            # #trips
            # returns an array of all trips a guest has made
            Trips.all.select do |trip|
                trip.guest==self
            end
        end

        def trip_count

            # #trip_count
            # returns the number of trips a guest has taken
            count=0
            Trips.all.each do |trip|
                if trip.guest==self
                    count +=1
                end
            end
            count
        end
        def self.all
            # .all
            # returns an array of all guests
            Trips.all.map do |trip|
                trip.guest
            end
        end

        def self.pro_traveller
            # .pro_traveller
            # returns an array of all guests who have made over 1 trip
            gst=[]
            Trips.all.each do |trip|
                if trip.guest.trip_count>1
                    gst<< trip.guest
                end
           end
           gst.uniq
        end

        def self.find_all_by_name(name)
            # .find_all_by_name(name)
            # takes an argument of a name (as a string), returns the all guests with that name
            all.select do |guest|
                guest.name==name
            end
        end

end
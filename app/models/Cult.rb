class Cult

    attr_reader :name, :location, :founding_year, :followers
    @@all = []
    

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @followers = []
        @@all << self
    end

    def recruit_follower(follower)
        self.followers << follower
    end


    def cult_population
        self.followers.count
    end

    def average_age
        sum_of_age = 0
        self.followers.each do |follower|
            sum_of_age += follower.age 
        end
        
        sum_of_age / self.cult_population.to_f
        
    end


    def self.find_by_name(name)
        self.all.find do |cult| 
            cult.name == name
        end

    end

    def self.find_by_location(location)
        self.all.select do |cult|
            cult.location == location
        end
    end

    def self.find_by_founding_year(founding_year)
        self.all.select do |cult|
            cult.founding_year == founding_year
        end
    end




    def self.all
        @@all
    end


end

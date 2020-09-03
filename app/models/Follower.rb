class Follower

    attr_reader :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @cults = []
        @life_motto = life_motto
        @@all << self
    end

    def cults
        @cults
    end

    def join_cult(cult)
        self.cults << cult
    end

    def self.of_a_certain_age(age)
        self.all.select do |follower|
            follower.age == age
        end


    end

    def self.most_active
        most_cults = self.all[0]
        self.all.map do |follower|
            if most_cults.cults.count < follower.cults.count
                most_cults = follower
            end

        end
        most_cults
    end




    def self.all
        @@all
    end


end

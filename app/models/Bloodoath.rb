
class BloodOath 

    attr_reader :cult, :follower, :initiation_date
    @@all = []

    def initialize(cult, follower, initiation_date)
        @cult = cult
        @follower = follower
        @initiation_date = initiation_date 
        cult.recruit_follower(follower)
        follower.join_cult(cult)
        @@all << self
    end


    def self.all
        @@all
    end






end

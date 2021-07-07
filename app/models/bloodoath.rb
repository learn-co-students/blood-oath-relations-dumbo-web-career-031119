class Bloodoath

    attr_accessor :follower, :cult
    attr_reader :date

    @@all = []
    
    def initialize(follower, cult, date = Time.now.strftime("%Y-%m-%d"))
        @follower = follower
        @cult = cult
        @date = date
        @@all << self
    end

    def self.first_oath
        @@all[0].follower
    end

    def self.all
        @@all
    end

end

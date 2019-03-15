class Cult

    attr_accessor :name, :location
    attr_reader :founding_year, :slogan

    @@all = []

    def initialize(name, location,  founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def recruit_follower(follower)
        # new_follower = Follower.new(name, age, life_motto, self)



    end




    def self.all
        @@all
    end


    def self.find_by_name(name)
        self.all.find do |cult|
            cult.name == name
        end
    end

end
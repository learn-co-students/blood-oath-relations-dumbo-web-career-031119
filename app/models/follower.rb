class Follower

    attr_reader :name, :age, :life_motto, :cult

    @@all = []

    def initialize(name, age, life_motto, cult)
        @name = name
        @age = age
        @life_motto = life_motto
        @cult = cult
        @@all << self
    end

    def self.all
        @@all
    end

end 
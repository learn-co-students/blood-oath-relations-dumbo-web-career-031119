class Follower

    attr_accessor :name, :age, :life_motto, :cults

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def cults
        @cults = Bloodoath.all.reject {|oath| 
            oath.follower != self}.collect {|oath| 
                    oath.cult
            }
    end

    def join_cult(cult)
        Bloodoath.new(self, cult)
    end

    def self.of_a_certain_age(age)
        self.all.select {|member| member.age == age}
    end

    def self.all
        @@all
    end

end

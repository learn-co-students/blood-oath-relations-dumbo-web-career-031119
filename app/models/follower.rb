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
        if age > cult.minimum_age
            Bloodoath.new(self, cult)
        else
            puts "Sorry, maybe try Club Penguin?"
        end
    end

    def self.of_a_certain_age(age)
        self.all.select {|member| member.age == age}
    end

    def my_cults_slogans
        cults.each {|cult| puts cult.slogan}
    end

    def self.most_active
        (Follower.all.sort_by{|follower| follower.cults.length}).first
    end

    def self.top_ten
        (Follower.all.sort_by{|follower| follower.cults.length}).slice(0..9)
    end

    def fellow_cult_members
        (cults.collect {|cult| cult.followers_list.each {|follower| follower}}).uniq()
    end

    def self.all
        @@all
    end

end

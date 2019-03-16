class Cult

    @@all = []
    @@locations = []

    attr_accessor :name, :location, :slogan, :cult_population
    attr_reader :founding_year, :average_age, :most_common_location, :minimum_age

    def initialize(name, location, founding_year, slogan, minimum_age = 18)
        @name = name
        @location = location
        @founding_year = founding_year
        @average_age = 0
        @slogan = slogan
        @followers_list = []
        @minimum_age = minimum_age
        @@all << self
    end

    def recruit_follower(follower)
        if follower.age >= minimum_age
            Bloodoath.new(follower, self)
        else
            puts "Sorry, maybe try Club Penguin?"
        end
    end

    def cult_population
        @cult_population = (Bloodoath.all.select {|oath| oath.cult == self}).length
    end

    def self.find_by_name(name)
        @@all.select {|cult| cult.name == name}
    end

    def self.find_by_location(location)
        @@all.select {|cult| cult.location == location}
    end

    def self.find_by_founding_year(year)
        @@all.select {|cult| cult.founding_year == year}
    end

    def followers_list
        Bloodoath.all.each {|oath| 
            if oath.cult == self && !@followers_list.include?(oath.follower)
                @followers_list.push(oath.follower)
            end
        }
        @followers_list
    end

    def average_age
        @average_age = (followers_list.collect {|follower| follower.age}).sum/followers_list.length
    end

    def my_followers_mottos
        followers_list.each {|follower|
            puts "#{follower.life_motto}\n"
        }
    end

    def self.least_popular
        puts ":((("
        Cult.all.sort_by!{|cult| cult.cult_population}.first
    end

    def self.locations
        @@locations = (Cult.all.collect {|x| x.location}).uniq()
    end

    def self.most_common_location
        city_arr =  Cult.all.collect {|cult|cult.location}
        city_arr.max_by{|city| city_arr.count(city)}
    end
    
    def self.all
        @@all
    end

end
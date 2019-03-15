require 'pry'


class Cult
@@all = []
attr_reader :name, :location, :founding_year, :slogan

 def initialize(name, location, founding_year, slogan)
   @name = name
   @location = location
   @founding_year = founding_year
   @slogan = slogan
   @@all << self
 end

 def recruit_follower(follower)
   BloodOath.new(self, follower, "YYYY-MM-DD")
 end

def cult_population
  members = BloodOath.all.select do |oath|
     oath.cult.name == name
   end
   members.length
#  binding.pry
 end

 def self.all
   @@all
 end

 def self.find_by_name(cult_name)
    @@all.find do |cult|
      cult.name == cult_name
    end
 end

 def self.find_by_location(cult_location)
   @@all.find do |cult|
     cult.location == cult_location
   end
 end

 def self.find_by_founding_year(founded_year)
   @@all.find do |cult|
     cult.founding_year == founded_year
   end
 end 
end

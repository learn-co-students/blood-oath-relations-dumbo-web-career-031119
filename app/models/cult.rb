
require"pry"


class Cult


attr_accessor :name, :location, :founding_year, :slogan, :list_of_followers

@@all = []

def initialize(name, location,founding_year, slogan)
@name = name
@location = location
@founding_year = founding_year
@slogan = slogan
@@all << self
@list_of_followers = []
end


def self.all
@@all
end


def recruit_follower(follower)
   @list_of_followers << follower
end


def cult_population
  @list_of_followers.length
end

def find_by_name(name)
  @@all.select do |cult|
    cult.name == name
  end
end


def find_by_location(location)
  @@all.select do |cult|
    cult.location == location
  end
end

def find_by_founding_year(year)
 @@all.select do |cult|
   cult.founding_year == year
 end
end
end

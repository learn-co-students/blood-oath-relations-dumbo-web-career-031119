class Cult
  attr_reader :name, :location, :founding_year

  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@all << self
  end

  def recruit_follower(follower)
    BloodOath.new(follower, self)
  end

  def self.all
    @@all
  end


  def cult_followers
    BloodOath.all.select { |oath| oath.cult == self}
  end

  def cult_population
    self.cult_followers.count
  end

  def self.find_by_name(name)
    all.select { |cult| cult.name == name}
  end

  def self.find_by_location(location)
    all.select { |cult| cult.location == location}
  end

  def self.find_by_founding_year(founding_year)
    all.select { |cult| cult.founding_year == founding_year}
  end

end

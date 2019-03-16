class BloodOath

attr_accessor :follower, :cult, :initial_date
@@all = []

def initialize(follower, cult, initial_date)

@follower = follower
@cult = cult
@initial_date = initial_date
@@all << self
end



def self.all
  @@all
end










end

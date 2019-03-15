class BloodOath
  attr_reader :initiation, :follower, :cult

  @@all = []

  def initialize(follower, cult)
    @follower = follower
    @cult = cult
    @initiation = Time.now
    @@all << self
  end

  def initiation_date
    "#{@initiation.year}-#{@initiation.month}-#{@initiation.day}"
  end

  def self.all
    @@all
  end

end

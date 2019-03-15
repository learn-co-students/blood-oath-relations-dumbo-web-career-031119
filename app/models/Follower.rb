class Follower
  attr_reader :name, :age, :life_motto

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def oaths
    BloodOath.all.select { |bloodOath| bloodOath.follower == self }
  end

  def cults
    self.oaths.map { |oath| oath.cult }
  end

  def join_cult(cult)
    BloodOath.new(self, cult)
  end

  def self.all
    @@all
  end

  def self.follower_of_a_certain_age(age)
    all.select { |follower| follower.age >= age}
  end

end

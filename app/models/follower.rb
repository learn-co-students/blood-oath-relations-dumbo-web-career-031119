
require"pry"

class Follower


attr_accessor :name, :age, :motto
@@all = []

def initialize(name, age, motto)
@name = name
@age = age
@motto = motto
@@all << self

end

def self.all
  @@all
end

def cults
blood_oath_arr = BloodOath.all.select do |oath|
                  self == oath.follower




                end
  blood_oath_arr.map do |info|
    info.cult
end
end

def join_cult(cult)
 cult.recruit_follower(self)

end

def self.of_a_certain_age(num)
       self.all.select do |follower|
         follower.age >= num


end

end


end

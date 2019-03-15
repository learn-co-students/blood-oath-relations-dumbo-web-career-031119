require_relative '../config/environment.rb'


def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("Maddison Family", "MI", 1952, "We are all family!")
cult2 = Cult.new("Unicorn", "NYC", 2018, "Team unicorn")

follower1 = Follower.new("Abby", 23, "Cults are the best")
follower2 = Follower.new("Dario", 27, "You can code as well!")

follower3 = Follower.new("david", 29, "not dario")

BloodOath.new(cult1, follower1, "2018-05-05")
BloodOath.new(cult2, follower2, "2019-01-01")
BloodOath.new(cult2, follower1, "2018-05-06")
BloodOath.new(cult1, follower2, "2019-01-02")




binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
false

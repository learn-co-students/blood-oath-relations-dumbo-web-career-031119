require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("Digi Cult", "Digital Underground", 1999, "All humans must die")
cult2 = Cult.new("Mole Women", "Scranton", 2005, "I know Karate")
cult3 = Cult.new("Dunder Mifflin", "Scranton", 2005, "That's what she said")

follower1 = Follower.new("Michael", 43, "That's what she said", cult3)
follower2 = Follower.new("Dwight", 35, "MICHAEL!", cult3)
follower3 = Follower.new("Kimmy", 40, "Defeat the red demon", cult2)
follower4 = Follower.new("Tidus", 43, "I'm on broadway", cult2)
follower5 = Follower.new("Fred", 16, "I love fortnite", cult1)
follower6 = Follower.new("Cyborg", 18, "Hacker life", cult1)






binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

miguel = Follower.new("Miguel", 27, "Just do it")
serena = Follower.new("Serena", 25, "Do it")

manson = Cult.new("Manson Family", "California", 1967, "kill")
jonestown = Cult.new("Jonestown", "Guyana", 1973, "die")


bloodOath_1 = BloodOath.new(miguel, manson)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

crossfit = Cult.new("Crossfit", "NYC", 2000, "Forging elite fitness.")
peta = Cult.new("Peta", "NYC", 1980, "People eat tasty animals.")
bassnectar = Cult.new("Bassnectar", "LA", 2003, "You 360, we 45.")

john = Follower.new("John", 27, "I love the Mets.")
terence = Follower.new("Terence", 26, "Yohji Yamamoto > Rick Owens")
jerry = Follower.new("Jerry", 25, "Quinoa bowls.")
coffee_dad = Follower.new("Coffee Dad", 56, "They will pay.")
graham = Follower.new("Graham", 29, "Dumbo_031119.each {|student| teach(student)}")
eric = Follower.new("Eric", 27, "I secretly have a pet rat.")

john.join_cult(crossfit)
terence.join_cult(peta)
coffee_dad.join_cult(peta)
coffee_dad.join_cult(crossfit)
coffee_dad.join_cult(bassnectar)
bassnectar.recruit_follower(graham)
bassnectar.recruit_follower(jerry)
peta.recruit_follower(eric)

Cult.all.each {|cult| cult.average_age}
Follower.all.each {|follower| follower.cults}




binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits

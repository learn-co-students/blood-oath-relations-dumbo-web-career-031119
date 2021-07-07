require"pry"

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
#<-----------------------CULTS-------------------------------------------->
cult1 = Cult.new("Mickey Mouse Club","Ohio",1991,"oh boy pluto")
cult2 = Cult.new("Samoas", "Staten Island", 1992,"c is for cookie")
cult3 = Cult.new("Target","California",1995,"you'll never leave")
cult4 = Cult.new("Wally","California",1909,"if you're not first you're last")
#<------------------------------------------------------------------------->




#<-----------------------Followers----------------------------------------->
follower1 = Follower.new("Derrick",13,"Stop drop and roll")
follower2 = Follower.new("Mark",16,"Buy the ticket, take the ride")
follower3 = Follower.new("Harriet", 13, "Paper or plastic?")
follower4 = Follower.new("Rudy",17,"It'd be cool if ya did")
#<------------------------------------------------------------------------->




#<-----------------------Blood Oaths--------------------------------------->
bloodoath_1 = BloodOath.new(follower1,cult1,"1992-03-14")
bloodoath_2 = BloodOath.new(follower2,cult2,"1998-05-19")
bloodoath_3 = BloodOath.new(follower3,cult3,"1997-04-21")
bloodoath_4 = BloodOath.new(follower4,cult3,"1996-06-05")
#<------------------------------------------------------------------------->
binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits

# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

g1 = Gym.new("NYSC")
g2 = Gym.new("Balley Total")
g3 = Gym.new("Curves")
g4 = Gym.new("PF")

l1= Lifter.new("Megan", 27)
l2= Lifter.new("Renea", 35)
l3= Lifter.new("Edmonds", 15)
l4= Lifter.new("Cynthia", 10)
l5= Lifter.new("Stokes", 33)
l6= Lifter.new("Ricky", 27)

m1 = Membership.new(l1, g1, 45)
m2 = Membership.new(l1, g2, 35)
m3 = Membership.new(l2, g1, 45)
m4 = Membership.new(l3, g3, 50)
m5 = Membership.new(l4, g4, 27)
m6 = Membership.new(l5, g2, 35)
m7 = Membership.new(l6, g3, 50)
m8 = Membership.new(l2, g3, 50)

binding.pry

puts "Gains!"

# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

brad = Lifter.new('Brad', 725)
joe = Lifter.new('Joe', 875)
marvin = Lifter.new('Marvin', 675)
allison = Lifter.new('Allison', 640)

blink = Gym.new('Blink Fitness')
twentyfour = Gym.new('24 Hour Fitness')
clubfit = Gym.new('Club Fit')
barbell = Gym.new('Barbell Brigade')

mem1 = Membership.new(100, brad, blink)
mem2 = Membership.new(75, brad, twentyfour)
mem3 = Membership.new(80, joe, clubfit)
mem4 = Membership.new(120, joe, barbell)
mem5 = Membership.new(100, marvin, blink)
mem6 = Membership.new(75, marvin, twentyfour)
mem7 = Membership.new(80, allison, clubfit)
mem8 = Membership.new(120, allison, barbell)


binding.pry

puts "Gains!"

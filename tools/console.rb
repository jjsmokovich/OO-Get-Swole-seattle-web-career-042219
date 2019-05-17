# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

g1 = Gym.new("y1")
g2 = Gym.new("y2")
g3 = Gym.new("y3")
g4 = Gym.new("y4")

l1 = Lifter.new("a", 350)
l2 = Lifter.new("b", 800)
l3 = Lifter.new("c", 250)
l4 = Lifter.new("d", 400)
l5 = Lifter.new("e", 450)


m1 = Membership.new(g1, l1, 35)
m5 = Membership.new(g1, l5, 30)
m6 = Membership.new(g2, l1, 20)
m2 = Membership.new(g2, l2, 50)
m3 = Membership.new(g3, l3, 20)
m4 = Membership.new(g4, l4, 10)


binding.pry

puts "Gains!"
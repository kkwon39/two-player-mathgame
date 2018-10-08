require './game'
require './player'

p1 = Player.new("Kelvin")
p2 = Player.new("Kelvin2")
g = Game.new(p1,p2)

puts g.number1
puts g.number2

puts g.ask_question

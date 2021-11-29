x, k, D = gets.split.map(&:to_i)

x = x.abs
move = [k, x / D].min

k -= move
x -= move * D

puts k.even? ? x : (x - D).abs

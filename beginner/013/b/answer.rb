a, b = gets.to_i + 1, gets.to_i + 1
small, large = [a, b].minmax

puts [large - small, 10 - large + small].min
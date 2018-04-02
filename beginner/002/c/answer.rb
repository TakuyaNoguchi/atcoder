a, b, c, d, e, f = gets.split.map(&:to_i)

puts ((c - a) * (f - b) - (d - b) * (e - a)).abs / 2.0
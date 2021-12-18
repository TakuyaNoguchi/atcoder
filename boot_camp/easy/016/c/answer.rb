N = gets.to_i
A = gets.split.map.with_index(1) { |a, i| [i, a.to_i] }

puts A.sort_by { |_, a| a }.map(&:first).join(' ')
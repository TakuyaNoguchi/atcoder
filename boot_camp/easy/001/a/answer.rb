S, T = gets.chomp, gets.chomp

puts [*0..2].inject(0) { |sum, i| sum + (S[i] == T[i] ? 1 : 0 ) }
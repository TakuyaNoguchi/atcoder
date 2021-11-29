gets
S = gets.chomp.chars

max = 0
(S.size - 1).times do |i|
  max = [max, (S[0..i].uniq & S[(i + 1)..-1].uniq).size].max
end

puts max
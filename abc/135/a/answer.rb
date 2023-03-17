A, B = gets.split.map(&:to_i)
sum = (A + B)

puts (sum % 2).zero? ? (sum / 2) : 'IMPOSSIBLE'
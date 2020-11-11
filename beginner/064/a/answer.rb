cards = gets.chomp.split.join

puts (cards.to_i % 4).zero? ? 'YES' : 'NO'

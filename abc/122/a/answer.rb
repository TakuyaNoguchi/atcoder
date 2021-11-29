b = gets.chomp
pair = %w[A T].include?(b) ? %w[A T] : %w[C G]

puts (pair - [b]).first

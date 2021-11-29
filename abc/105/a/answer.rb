N, K = gets.split.map(&:to_i)

puts (N % K).zero? ? 0 : 1

N, K = gets.to_i, gets.to_i
x = gets.split.map(&:to_i)

puts x.map { |_x| [_x * 2, (_x - K).abs * 2].min }.sum
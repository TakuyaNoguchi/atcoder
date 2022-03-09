N, K = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)

puts H.sort_by(&:-@).drop(K).inject(0, :+)
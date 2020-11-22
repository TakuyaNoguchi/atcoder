A, B, C, K = gets.split.map(&:to_i)
S, T = gets.split.map(&:to_i)

puts A * S + B * T - (T + S >= K ? (T + S) * C : 0)

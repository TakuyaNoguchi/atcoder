N, H = gets.split.map(&:to_i)
A, B, C, D, E = gets.split.map(&:to_i)

puts [*0..N].map { |x|
  y = (((N - x) * E - H - B * x) / (D + E).to_f).floor + 1

  A * x + C * (y.positive? ? y : 0)
}.min
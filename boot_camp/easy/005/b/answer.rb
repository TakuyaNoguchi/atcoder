N, M, C = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

puts readlines.count { |l|
  a = l.split.map(&:to_i)

  a.zip(B).map { |_a, _b| _a * _b }.sum + C > 0
}
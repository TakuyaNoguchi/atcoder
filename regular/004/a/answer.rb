N = gets.to_i

input = readlines.map { |l|
  l.chomp.split.map(&:to_i)
}

puts input.combination(2).map { |(x1, y1), (x2, y2)|
  Math.sqrt((x1 - x2)**2 + (y1 - y2)**2)
}.max

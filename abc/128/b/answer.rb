gets

input = readlines.map.with_index(1) { |line, i|
  s, p = line.chomp.split

  [i, s, p.to_i]
}

puts input.sort_by { |_, s, p| [s, -p] }.map(&:first)

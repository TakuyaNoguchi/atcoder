gets
l = gets.split.map(&:to_i)

puts l.combination(3).count { |a, b, c|
  next if a == b || b == c || a == c

  asc_ordered = [a, b, c].sort
  asc_ordered[2] < asc_ordered[0] + asc_ordered[1]
}

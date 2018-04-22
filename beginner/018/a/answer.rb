A, B, C = readlines.map(&:to_i)
sort_point = [A, B, C].sort_by(&:-@)

puts sort_point.index(A) + 1
puts sort_point.index(B) + 1
puts sort_point.index(C) + 1
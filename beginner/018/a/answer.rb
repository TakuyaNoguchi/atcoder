A, B, C = readlines.map(&:to_i)
points = [A, B, C].sort_by(&:-@)

puts points.index(A).next, points.index(B).next, points.index(C).next

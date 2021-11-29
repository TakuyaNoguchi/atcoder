N, M, X = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

puts [
  A.select { |a| a < X }.count,
  A.select { |a| a > X }.count
].min
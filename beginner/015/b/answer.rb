N = gets.to_i
A = gets.split.map(&:to_i)

puts (A.inject(:+) / (N - A.count(0)).to_f).ceil
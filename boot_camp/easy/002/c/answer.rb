N = gets.to_i
X = gets.split.map(&:to_i)

puts 1.upto(100).map { |point| X.inject(0) { |sum, x| sum + (x - point)**2 } }.min
N = gets.to_i
A = gets.split.map(&:to_i)

puts Rational(1, A.map { |a| Rational(1, a) }.sum).to_f
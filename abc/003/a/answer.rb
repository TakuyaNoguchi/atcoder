answer = 0
X = gets.to_i
probability = Rational(1, X)

1.upto(X) do |x|
  answer += 10_000 * x * probability
end

puts answer.to_i
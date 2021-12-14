K, _ = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
ans = nil

A.size.times do |i|
  d = i.zero? ? A[-1] - A[0] : A[i - 1] + K - A[i]

  ans = ans ? [ans, d].min : d
end

puts ans
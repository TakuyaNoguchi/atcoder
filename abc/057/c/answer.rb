N = gets.to_i
answer = N.to_s.size

1.upto(Math.sqrt(N)) do |a|
  next unless (N % a).zero?

  b = N / a
  answer = [answer, [a.to_s.size, b.to_s.size].max].min
end

puts answer

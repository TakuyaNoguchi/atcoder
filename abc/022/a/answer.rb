N, S, T = gets.split.map(&:to_i)
w = gets.to_i

answer = w.between?(S, T) ? 1 : 0
(N - 1).times do
  w += gets.to_i

  answer += 1 if w.between?(S, T)
end

puts answer

N = gets.to_i
D, X = gets.split.map(&:to_i)
A = readlines.map(&:to_i)
ans, cnt = X + N, 1

loop do
  ate_days = A.map { |a| a * cnt + 1 }.select { |a| a <= D }
  break if ate_days.empty?

  ans += ate_days.size
  cnt += 1
end

puts ans
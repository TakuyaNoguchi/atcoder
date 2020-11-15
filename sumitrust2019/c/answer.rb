X = gets.to_i
dp = [1]

0.upto(X) do |i|
  next unless dp[i]

  100.upto(105) { |j| dp[i + j] = 1 }
end

puts dp[X] ? dp[X] : 0

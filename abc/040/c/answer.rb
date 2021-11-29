N = gets.to_i
a = gets.split.map(&:to_i)
dp = Array.new(N, Float::INFINITY)

dp[0] = a[0]

1.upto(N - 1) do |i|
  dp[i] = [dp[i], dp[i - 1] + (a[i] - a[i - 1]).abs].min
  next if i == 1

  dp[i] = [dp[i], dp[i - 2] + (a[i] - a[i - 2]).abs].min
end

puts dp.last - dp.first

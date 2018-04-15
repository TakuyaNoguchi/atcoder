# Submission #1125368 を元に実装

R, G, B = gets.split.map(&:to_i)
MAX_NUM = 300

def move(pos, num)
  distance = if num >= G + B
               MAX_NUM + 100 - pos
             elsif num >= B
               MAX_NUM + 200 - pos
             else
               MAX_NUM + 300 - pos
             end
  distance.abs
end

dp = Array.new(1000) { Array.new(1000, 10**9) }
marble_sum = R + G + B

1000.times { |i| dp[i][marble_sum] = 0 }

1.upto(1000 - 1) do |i|
  marble_sum.downto(0) do |j|
    dp[i][j] = [dp[i - 1][j], dp[i - 1][j + 1] + move(i, j)].min
  end
end

puts (1...1000).map { |i| dp[i][0] }.min
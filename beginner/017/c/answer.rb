N, M = gets.split.map(&:to_i)

array = Array.new(M + 2, 0)
score_sum = 0

N.times do
  l, r, s = gets.split.map(&:to_i)
  array[l] += s
  array[r + 1] -= s
  score_sum += s
end

1.upto(array.size - 1) do |i|
  array[i] += array[i - 1]
end

# スコアの合計から累積和の最小値を引くことで、
# 全ての宝石を取らない最大コストを算出できる。
puts score_sum - array[1..M].min
N = gets.to_i

a = gets.split.map(&:to_i)
answer = 1
dp = []

N.times do |i|
  index = dp.bsearch_index { |n| n >= a[i] } || dp.size
  dp[index] = a[i]

  answer = [answer, index + 1].max
end

puts answer

N, A, B = gets.split.map(&:to_i)
ans = 0

1.upto(N) do |n|
  sum = n.to_s.chars.map(&:to_i).inject(:+)
  ans += n if sum >= A && sum <= B
end

puts ans
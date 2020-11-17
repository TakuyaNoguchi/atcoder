N = gets.to_i

remaing = (1000 - N)
answer = 0

[500, 100, 50, 10, 5, 1].each do |coin|
  answer += remaing / coin
  remaing %= coin
end

puts answer

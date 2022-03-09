h = gets.to_i
ans = cnt = 1

while h > 1
  ans += 2**cnt

  h /= 2
  cnt += 1
end

puts ans
A, B = gets.split.map(&:to_i)

ans, input = 0, 1

while input < B
  input += (A - 1)
  ans += 1
end

puts ans
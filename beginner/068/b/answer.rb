N = gets.to_i
answer, max = nil, 0

1.upto(N) do |n|
  count, tmp = 0, n

  while tmp.even?
    tmp /= 2
    count += 1
  end

  if count >= max
    answer = n
    max = count
  end
end

puts answer

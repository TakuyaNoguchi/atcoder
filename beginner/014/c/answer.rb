N = gets.to_i
MAX_NUM = 1_000_001
array = Array.new(MAX_NUM + 1, 0)
N.times do
  a, b = gets.split.map(&:to_i)
  array[a] += 1
  array[b + 1] -= 1
end

1.upto(MAX_NUM) do |i|
  array[i] += array[i - 1]
end

puts array.max
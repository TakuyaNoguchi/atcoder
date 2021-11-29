N = gets.to_i
a = gets.split.map(&:to_i)
a = [0, *a, 0]

sum = 0
a_size = a.size
(a_size - 1).times do |i|
  sum += (a[i] - a[i + 1]).abs
end

1.upto(a_size - 2) do |i|
  puts sum - ((a[i - 1] - a[i]).abs + (a[i] - a[i + 1]).abs) + (a[i - 1] - a[i + 1]).abs
end
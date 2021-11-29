N = gets.to_i
a = gets.split.map(&:to_i)

puts a.map { |num|
  num /= 2 while (num % 2).zero?
  num
}.uniq.size
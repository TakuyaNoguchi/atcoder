N = gets.to_i

puts [*1..N].select { |n|
  next if n.even?

  [*1..N].count { |d| (n % d).zero? } == 8
}.count

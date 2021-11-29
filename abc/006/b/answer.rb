n = gets.to_i

if n <= 3
  puts n <= 2 ? 0 : 1
  exit
end

a1, a2, a3 = 0, 0, 1
sum = 0
(n - 3).times do
  sum = (a1 + a2 + a3) % 10_007
  a1, a2, a3 = a2, a3, sum
end

puts sum
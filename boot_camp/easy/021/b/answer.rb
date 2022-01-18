a, b, K = gets.split.map(&:to_i)
a -= K

if a.negative?
  b += a
  a = 0
end

b = 0 if b.negative?

puts [a, b].join(' ')
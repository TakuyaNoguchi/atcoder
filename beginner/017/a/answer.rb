answer = 0
3.times do
  s, e = gets.split.map(&:to_i)
  answer += s / 10 * e
end

puts answer
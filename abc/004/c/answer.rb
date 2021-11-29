N = gets.to_i % 30
n = [*1..6]

N.times do |i|
  idx = i % 5
  n[idx], n[idx + 1] = n[idx + 1], n[idx]
end

puts n.join
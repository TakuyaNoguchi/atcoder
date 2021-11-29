N, K = gets.split.map(&:to_i)
R = gets.split.map(&:to_i).sort
c = 0

R.last(K).each do |r|
  c = (c + r) / 2.0
end

puts c
N, M, X = gets.split.map(&:to_i)
costs = Hash.new(0)

gets.split.each do |a|
  costs[a.to_i] = 1
end

to_zero = (1...X).inject(0) { |sum, i| sum + costs[i] }
to_n = ((X + 1)...N).inject(0) { |sum, i| sum + costs[i] }

puts [to_zero, to_n].min

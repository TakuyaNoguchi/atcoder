N = gets.to_i
a = gets.split.map(&:to_i)
alice = bob = 0

a.sort_by(&:-@).each_with_index do |_a, i|
  alice += _a if i.even?
  bob += _a if i.odd?
end

puts alice - bob
N = gets.to_i
a = gets.split.map(&:to_i).sort_by(&:-@)
alice = bob = 0

N.times do |i|
  if i.even?
    alice += a[i]
  else
    bob += a[i]
  end
end

puts alice - bob
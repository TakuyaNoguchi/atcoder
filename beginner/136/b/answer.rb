N = gets.to_i

puts [*1..N].count { |n| n.to_s.size.odd? }

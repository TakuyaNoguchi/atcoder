N = gets.to_i
p = gets.split.map(&:to_i)

if p.zip(p.dup.sort).count { |_p, _sorted_p| _p != _sorted_p } <= 2
  puts 'YES'
else
  puts 'NO'
end
N = gets.to_i
v = gets.split.map(&:to_i).sort
ans = v.first
v[1..-1].each { |_v| ans = Rational(ans + _v, 2) }

puts ans.to_f
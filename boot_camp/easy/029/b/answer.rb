S = gets.chomp.chars
ans = 1000

S.each_cons(3) do |s|
  ans = [ans, (753 - s.join.to_i).abs].min
end

puts ans
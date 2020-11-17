joi = ioi = 0

gets.chomp.chars.each_cons(3) do |c1, c2, c3|
  joi += 1 if c1 == 'J' && c2 == 'O' && c3 == 'I'
  ioi += 1 if c1 == 'I' && c2 == 'O' && c3 == 'I'
end

puts joi, ioi

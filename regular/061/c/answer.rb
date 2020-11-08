s = gets.chomp
sum = 0

['', '+'].repeated_permutation(s.size) do |ops|
  exp = ''
  next if ops[0] == '+'

  s.size.times do |i|
    exp << ops[i]
    exp << s[i]
  end

  sum += exp.split('+').map(&:to_i).inject(:+)
end

puts sum

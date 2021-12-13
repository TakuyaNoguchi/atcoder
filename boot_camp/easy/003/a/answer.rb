S = gets.chomp

puts S.chars.zip('CODEFESTIVAL2016'.chars).count { |a, b| a != b }
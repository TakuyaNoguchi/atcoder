N = gets.chomp
puts (N.include?('3') || (N.to_i % 3).zero?) ? 'YES' : 'NO'
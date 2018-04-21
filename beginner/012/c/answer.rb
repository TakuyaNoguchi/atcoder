EXPECTED = 2025
N = gets.to_i

[*1..9].repeated_permutation(2).each do |m, n|
  puts "#{m} x #{n}" if m * n + N == EXPECTED
end
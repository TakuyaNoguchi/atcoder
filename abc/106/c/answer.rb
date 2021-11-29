S, K = gets.chomp, gets.to_i

S[0, K].each_char do |c|
  next if c == '1'

  puts c
  exit
end

puts 1

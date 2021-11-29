m = gets.to_i

if m < 100
  puts '00'
elsif m <= 5_000
  puts (m / 100).to_s.rjust(2, '0')
elsif m <= 30_000
  puts (m / 1_000) + 50
elsif m <= 70_000
  puts ((m / 1_000) - 30) / 5 + 80
else
  puts 89
end

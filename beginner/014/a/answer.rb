a, b = gets.to_i, gets.to_i

if a <= b
  puts b - a
elsif (a % b).zero?
  puts 0
else
  puts b - (a % b)
end
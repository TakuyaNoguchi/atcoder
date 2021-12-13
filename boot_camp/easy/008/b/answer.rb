a, b = gets.split.map(&:to_i)
n = "#{a}#{b}".to_i

if n == Integer.sqrt(n)**2
  puts 'Yes'
else
  puts 'No'
end
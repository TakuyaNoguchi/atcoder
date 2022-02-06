S = gets.chomp

if S.match?(/\A(?:hi)+\z/)
  puts 'Yes'
else
  puts 'No'
end
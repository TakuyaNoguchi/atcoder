S = gets.chomp
chars = S.chars.uniq

if chars.size == 2 && chars.all? { |c| S.count(c) == 2 }
  puts 'Yes'
else
  puts 'No'
end
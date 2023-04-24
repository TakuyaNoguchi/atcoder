S = gets.chomp

if S.match?(/\A(dream|dreamer|erase|eraser)+\z/)
  puts 'YES'
else
  puts 'NO'
end
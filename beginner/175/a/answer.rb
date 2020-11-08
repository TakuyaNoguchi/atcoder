S = gets.chomp

puts (S.match(/R+/) || [''])[0].length

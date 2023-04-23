_, S = gets, gets.chomp

puts S.match?(/\|\.*\*\.*\|/) ? 'in' : 'out'
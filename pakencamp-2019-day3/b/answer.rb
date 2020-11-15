gets
S = readlines.map(&:chomp)

puts S.count('black') > S.count('white') ? 'black' : 'white'

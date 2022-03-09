H, N = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

puts A.inject(:+) >= H ? 'Yes' : 'No'
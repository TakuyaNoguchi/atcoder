_, T = gets.split.map(&:to_i)
time = gets.split.map(&:to_i).inject(:+)

puts (time / T) + ((time % T).zero? ? 0 : 1)

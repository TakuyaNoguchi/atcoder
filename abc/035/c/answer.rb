N, = gets.split.map(&:to_i)
othello = Array.new(N, 0)
readlines.each do |line|
  l, r = line.chomp.split.map(&:to_i)
  othello[l - 1] += 1
  othello[r] -= 1 if othello[r]
end

cum_sum = 0
puts othello.map { |n|
  cum_sum += n
  cum_sum.even? ? '0' : '1'
}.join
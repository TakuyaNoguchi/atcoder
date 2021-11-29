N = gets.to_i
input = readlines.map { |l| l.chomp.split.map(&:to_i) }.unshift([0, 0, 0])

puts input.each_cons(2).all? { |before, after|
  b_t, b_x, b_y = before
  a_t, a_x, a_y = after

  t_diff = a_t - b_t
  d = (b_x - a_x).abs + (b_y - a_y).abs

  break false if d > t_diff

  (t_diff - d).even?
} ? 'Yes' : 'No'

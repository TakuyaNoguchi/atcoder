_, T = gets.split.map(&:to_i)

costs = readlines.map { |l|
  c, t = l.split.map(&:to_i)
  c if t <= T
}.compact

puts costs.empty? ? 'TLE' : costs.min

N = gets.to_i
c = readlines.map(&:to_i)

div_counts = c.map { |m| c.count { |n| (m % n).zero? } }
puts div_counts.inject(0) { |prob, div_count|
  prob_front = (div_count + 1) / 2
  prob + prob_front / div_count.to_f
}
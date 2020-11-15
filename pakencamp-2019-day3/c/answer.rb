N, M = gets.split.map(&:to_i)
a = readlines.map { |l| l.split.map(&:to_i) }

puts [*0...M].combination(2).map { |t1, t2|
  N.times.inject(0) { |sum, n| sum + [a[n][t1], a[n][t2]].max }
}.max

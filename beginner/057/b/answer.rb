N, M = gets.split.map(&:to_i)

points = Array.new(N) { gets.split.map(&:to_i) }
check_points = 1.upto(M).map { |i| [i] + gets.split.map(&:to_i) }

points.each do |(a, b)|
  puts check_points.min_by { |(_, c, d)| (a - c).abs + (b - d).abs }.first
end

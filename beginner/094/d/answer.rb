gets
a = gets.split.map(&:to_i)

max_a = a.max
closest_half_max_a = (a - [max_a]).min_by { |n| (n - max_a / 2).abs }

puts "#{max_a} #{closest_half_max_a}"
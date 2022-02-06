gets
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
d_ticket = readlines.map { |l| l.chomp.split.map(&:to_i) }

ans = a.min + b.min

d_ticket.each do |x, y, c|
  ans = [a[x - 1] + b[y - 1] - c, ans].min
end

puts ans
N = gets.to_i
D, X = gets.split.map(&:to_i)

sum = 0
readlines.map(&:to_i).each do |a|
  quo, rem = D.divmod(a)
  sum += quo
  sum += 1 unless rem.zero?
end

puts sum + X
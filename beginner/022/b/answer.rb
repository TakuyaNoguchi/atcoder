gets
a = readlines.map(&:to_i)

puts a.size - a.uniq.size

gets

count = max = 0
gets.split.map(&:to_i).each { |aj|
  next if aj <= max

  count += 1
  max = aj
}

puts count

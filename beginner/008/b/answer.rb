N = gets.to_i
s = readlines.map(&:chomp).each_with_object(Hash.new(0)) { |name, hash|
  hash[name] += 1
}

puts s.max_by { |_, v| v }.first
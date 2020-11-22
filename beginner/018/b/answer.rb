s, _ = gets.chomp, gets.to_i

readlines.each do |line|
  l, r = line.split.map { |n| n.to_i.pred }

  ((r - l + 1) / 2).times do |i|
    s[l + i], s[r - i] = s[r - i], s[l + i]
  end
end

puts s

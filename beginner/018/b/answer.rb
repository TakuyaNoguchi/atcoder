s = gets.chomp

gets.to_i.times do
  l, r = gets.split.map(&:to_i)

  ((r - l + 1) / 2).times do |i|
    s[l + i - 1], s[r - i - 1] = s[r - i - 1], s[l + i - 1]
  end
end

puts s
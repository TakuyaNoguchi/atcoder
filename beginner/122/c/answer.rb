gets

ac_counts = [0]
gets.chomp.chars.each_cons(2).with_index(1) do |(a, b), i|
  ac_counts[i] = ac_counts[i - 1]
  ac_counts[i] += 1 if a == 'A' && b == 'C'
end

readlines.each do |line|
  l, r = line.split.map(&:to_i)

  puts ac_counts[r - 1] - ac_counts[l - 1]
end

gets

answer = 0
gets.chomp.split.map(&:to_i).each { |n|
  n.downto(1) do |i|
    break if i.odd? && i % 3 != 2

    answer += 1
  end
}

puts answer
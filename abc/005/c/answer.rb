T, N = gets.to_i, gets.to_i
a = gets.split.map(&:to_i)
M = gets.to_i
b = gets.split.map(&:to_i)

if N < M
  puts 'no'
  exit
end

b.each do |b_t|
  takoyaki_sold_index = a.find_index { |a_t|
    (b_t - a_t) >= 0 && (b_t - a_t) <= T
  }

  if takoyaki_sold_index.nil?
    puts 'no'
    exit
  end

  a.delete_at(takoyaki_sold_index)
end

puts 'yes'
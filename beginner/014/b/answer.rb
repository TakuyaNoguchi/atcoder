_, X = gets.split.map(&:to_i)
prices = gets.split.map(&:to_i)

total_price = 0
X.to_s(2).chars.reverse_each.with_index do |bit, i|
  total_price += prices[i] if bit == '1'
end

puts total_price
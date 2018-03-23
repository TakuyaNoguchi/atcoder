deg, dis = gets.split.map(&:to_i)
deg *= 10
w = (dis * 100 / 60).round(-1)

if w >= 0 && w <= 20
  puts 'C 0'
  exit
end

[
  150, 330, 540, 790, 1070, 1380,
  1710, 2070, 2440, 2840, 3260
].each.with_index(1) do |upper_limit, w_power|
  if w <= upper_limit
    W = w_power
    break
  end
end
W ||= 12

if deg < 1125 || deg >= 34_875
  puts "N #{W}"
  exit
end

dirs = %w[NNE NE ENE E ESE SE SSE S SSW SW WSW W WNW NW NNW]
deg_upper_limits = [
  3375, 5625, 7875, 10_125, 12_375, 14_625, 16_875, 19_125,
  21_375, 23_625, 25_875, 28_125, 30_375, 32_625, 34_875
]

dir = dirs[deg_upper_limits.find_index { |limit| deg < limit }]
puts "#{dir} #{W}"
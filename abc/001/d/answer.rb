N = gets.to_i
rained = Array.new(24 * 12 + 1, 0)
prods = Array.new(24 * 12 + 1, 0)

readlines.each do |l|
  s, e = l.split('-')
  s_hour, s_min = s.scan(/.{2}/).map(&:to_i)
  e_hour, e_min = e.scan(/.{2}/).map(&:to_i)

  rained[(s_hour * 12) + (s_min / 5)] += 1
  rained[(e_hour * 12) + ((e_min + ((e_min % 5).zero? ? 0 : (5 - e_min % 5))) / 5)] -= 1
end

prod = 0
rained.each_with_index do |min, i|
  prod += min
  prods[i] = prod
end

raining = false
prods.each_with_index do |p, i|
  hour = i / 12

  if !raining && p.positive?
    raining = true

    printf('%02d%02d-', hour, i % 12 * 5)
  elsif raining && p.zero?
    raining = false

    printf("%02d%02d\n", hour, i % 12 * 5)
  end
end

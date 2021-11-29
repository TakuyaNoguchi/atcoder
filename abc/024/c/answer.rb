N, D, K = gets.split.map(&:to_i)

l_r = []
D.times do
  l_r << gets.split.map(&:to_i)
end

K.times do
  s, t = gets.split.map(&:to_i)

  l_r.each.with_index(1) do |(l, r), d|
    next unless s.between?(l, r)

    s = (s <= t ? r : l)

    next unless t.between?(l, r)

    puts d
    break
  end
end

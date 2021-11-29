t_xa, t_ya, t_xb, t_yb, T, V = gets.split.map(&:to_i)
gets

readlines.each do |l|
  x, y = l.split.map(&:to_i)

  d = Math.sqrt((x - t_xa)**2 + (y - t_ya)**2) +
      Math.sqrt((x - t_xb)**2 + (y - t_yb)**2)

  if d <= T * V
    puts 'YES'
    exit
  end
end

puts 'NO'
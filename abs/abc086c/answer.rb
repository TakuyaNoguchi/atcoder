current_t = current_x = current_y = 0

gets.to_i.times do
  t, x, y = gets.split.map(&:to_i)
  t_diff = t - current_t
  d = (current_x - x).abs + (current_y - y).abs

  if t_diff < d || (t_diff - d).odd?
    puts 'No'
    exit
  end

  current_t = t
  current_x = x
  current_y = y
end

puts 'Yes'
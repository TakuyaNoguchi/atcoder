R, C = gets.split.map(&:to_i)
sy, sx = gets.split.map { |n| n.to_i - 1 }
gy, gx = gets.split.map { |n| n.to_i - 1 }

c = []
R.times do
  c << gets.chomp.chars
end

moved = [[sy, sx, 0]]
moved.each do |y, x, cost|
  [[-1, 0], [1, 0], [0, -1], [0, 1]].each do |dy, dx|
    # 壁「#」の場合はスキップしているため、
    # my, mx が 負の数の時に c を参照することはない。
    my, mx = y + dy, x + dx

    case c[my][mx]
    when '#'
      next
    when '.'
      c[my][mx] = cost + 1
      moved << [my, mx, cost + 1]
    else
      next if c[my][mx] <= cost + 1

      c[my][mx] = cost + 1
      moved << [my, mx, cost + 1]
    end
  end
end

puts c[gy][gx]
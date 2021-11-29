N = gets.to_i
points = []

readlines.each do |l|
  points << l.chomp.split.map(&:to_i)
end

0.upto(100) do |cy|
  0.upto(100) do |cx|
    zero_height_points, other_height_points = points.partition { |(_, _, h)| h.zero? }

    # hi = H − |Cx - X| - |Cy - Y| より、H = hi + |Cx - X| + |Cy - Y| を満たすことを確認
    chs = other_height_points.map { |(x, y, h)| h + (cy - y).abs + (cx - x).abs }
    # 一意に決まらない場合は解ではない。
    next unless chs.uniq.size == 1

    ch = chs.first
    # 高さ1以上の場合に求めたHが、高さ0の場合に矛盾しないことを確認
    next if zero_height_points.any? { |(x, y, _)| ch > (cy - y).abs + (cx - x).abs }

    puts "#{cx} #{cy} #{ch}"
    exit
  end
end

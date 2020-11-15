gets
targets, starts, ends = [], [], []
readlines.each do |l|
  targets << l.split.map(&:to_i)

  starts << targets[-1][0]
  ends << targets[-1][1]
end

answer = Float::INFINITY
starts.each do |s|
  ends.each do |e|
    sec = targets.map { |a, b| (s - a).abs + (a - b).abs + (b - e).abs }.inject(:+)

    answer = [answer, sec].min
  end
end

puts answer

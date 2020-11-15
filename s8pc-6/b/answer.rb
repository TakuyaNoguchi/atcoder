gets
targets, starts, ends = [], [], []
readlines.each do |l|
  targets << l.split.map(&:to_i)

  starts << targets[-1][0]
  ends << targets[-1][1]
end

# 開始マス、終了マスとして各買い物客の開始マス、終了マスの中央値を使用すると、
# 移動距離の合計が最小(= 最適解)となる(AtCoderの解説参照)
s = starts.sort[starts.size / 2]
e = ends.sort[ends.size / 2]

puts targets.map { |a, b| (s - a).abs + (a - b).abs + (b - e).abs }.inject(:+)

relation = Hash.new { |h, k| h[k] = [] }
N, M = gets.split.map(&:to_i)

M.times do
  a, b = gets.split.map(&:to_i)
  relation[a] << b
  relation[b] << a
end

1.upto(N) do |n|
  # 自分と友達は除外
  exclude = [n, *relation[n]]
  puts relation[n].flat_map { |f| relation[f] - exclude }.uniq.size
end
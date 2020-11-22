R, C, K = gets.split.map(&:to_i)
N = gets.to_i

rows, cols = Array.new(R, 0), Array.new(C, 0)
candy = Array.new(N)

N.times do |i|
  row, col = gets.split.map(&:to_i).map(&:pred)

  candy[i] = [row, col]
  rows[row] += 1
  cols[col] += 1
end

row_hash = Hash.new(0)
rows.each { |row| row_hash[row] += 1 }

col_hash = Hash.new(0)
cols.each { |col| col_hash[col] += 1 }

answer = 0
(K + 1).times do |k|
  answer += row_hash[k] * col_hash[K - k]
end

candy.each do |row, col|
  sum = rows[row] + cols[col]

  answer -= 1 if sum == K
  answer += 1 if sum == K + 1
end

puts answer

R, C, K = gets.split.map(&:to_i)

memo = Array.new(R + 1) { Array.new(C + 1, 0) }
readlines.each_with_index do |line, i|
  line.chomp.chars.each_with_index do |c, j|
    next if c == 'o'

    K.times do |l|
      if i + l < R
        memo[i + l][[0, j - K + 1 + l].max] += 1
        memo[i + l][[C, j + K - l].min] -= 1
      end

      if i - l >= 0 && !l.zero?
        memo[i - l][[0, j - K + 1 + l].max] += 1
        memo[i - l][[C, j + K - l].min] -= 1
      end
    end
  end
end

0.upto(R - 1) do |i|
  1.upto(C - 1) do |j|
    memo[i][j] += memo[i][j - 1]
  end
end

answer = 0
(K - 1).upto(R - K) do |i|
  (K - 1).upto(C - K) do |j|
    answer += 1 if memo[i][j].zero?
  end
end

puts answer

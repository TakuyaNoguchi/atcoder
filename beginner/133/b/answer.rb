N, D = gets.split.map(&:to_i)

x = []
readlines.each do |l|
  x << l.chomp.split.map(&:to_i)
end

answer = 0
0.upto(N - 2) do |i|
  (i + 1).upto(N - 1) do |j|
    d = Math.sqrt([*0...D].inject(0) { |sum, index| sum + ((x[i][index] - x[j][index]).abs)**2 })

    answer += 1 if d == d.to_i
  end
end

puts answer

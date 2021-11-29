N = gets.to_i
x_y = readlines.map { |l| l.split.map(&:to_i) }

puts [*0...N].inject(0) { |sum1, i|
  sum1 + [*(i + 1)...N].inject(0) { |sum2, j|
    d = Math.sqrt((x_y[i][0] - x_y[j][0])**2 + (x_y[i][1] - x_y[j][1])**2)

    sum2 + d * (2.to_r / N)
  }
}.round(10)

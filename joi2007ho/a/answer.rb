N, K = gets.split.map(&:to_i)
a = readlines.map(&:to_i)

answer = acc = a[0...K].inject(:+)

a[K...N].each_with_index do |n, pre|
  acc = acc - a[pre] + n
  answer = [answer, acc].max
end

puts answer

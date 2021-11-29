N, Y = gets.split.map(&:to_i)

answer = nil

0.upto(N) do |a|
  0.upto(N) do |b|
    c = N - a - b
    next if c.negative?

    money = a * 10_000 + b * 5_000 + c * 1_000
    answer = "#{a} #{b} #{c}" if money == Y
  end
end

puts answer ? answer : '-1 -1 -1'

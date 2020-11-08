# N冊の参考書、M個全てのアルゴリズムの理解度をX以上にする。
N, M, X = gets.split.map(&:to_i)
# c[0]: 本の価格、c[1..M]: 各アルゴリズムの理解度
c = []

readlines.each do |l|
  c << l.chomp.split.map(&:to_i)
end

answer = Float::INFINITY

0.upto(2**N - 1) do |bit|
  money, x = 0, Array.new(M, 0)

  0.upto(N - 1) do |n|
    next if (bit & 2**n) == 0

    money += c[n][0]
    x.length.times { |i| x[i] += c[n][i + 1] }
  end

  next if money.zero? || x.any? { |_x| _x < X }

  answer = [answer, money].min
end

puts (answer == Float::INFINITY) ? -1 : answer

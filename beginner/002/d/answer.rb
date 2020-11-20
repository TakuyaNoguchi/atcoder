N, M = gets.split.map(&:to_i)
relation = Array.new(N) { Array.new(N, false) }

readlines.each do |l|
  x, y = l.split.map(&:to_i)
  relation[x - 1][y - 1] = relation[y - 1][x - 1] = true
end

answer = 0
[*1...2**N].each do |bit|
  num_of_people = bit.to_s(2).count('1')
  next if num_of_people <= answer

  ok = true
  [*0...N].each do |i|
    next if ((2**i) & bit).zero?

    [*0...i].each do |j|
      next if ((2**j) & bit).zero?
      next if relation[i][j]

      ok = false
      break
    end

    break unless ok
  end

  next unless ok

  answer = [answer, num_of_people].max
end

puts answer

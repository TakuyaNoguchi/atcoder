N, T = gets.split.map(&:to_i)
A = readlines.map(&:to_i)
answer = 0

A.each_cons(2) do |before, after|
  answer += [after - before, T].min
end

puts answer + T

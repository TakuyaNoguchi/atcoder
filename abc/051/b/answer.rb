K, S = gets.split.map(&:to_i)
answer = 0

0.upto(K) do |x|
  0.upto(K) do |y|
    z = S - x - y

    answer += 1 if z >= 0 && z <= K
  end
end

puts answer

N, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
ans = 0

a.sort.each.with_index(1) do |_a, i|
   break if _a > x
   break if i == N && _a != x

   ans += 1
   x -= _a
end

puts ans
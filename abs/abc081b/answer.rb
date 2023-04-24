gets
ary = gets.split.map(&:to_i)
ans = 0

while ary.all?(&:even?)
  ary.map! { |a| a / 2 }
  ans += 1
end

puts ans
_ = gets
A = gets.split.map(&:to_i)
ans = 0

while A.all?(&:even?)
  ans += 1
  A.map! { |a| a / 2 }
end

puts ans
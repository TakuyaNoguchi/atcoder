N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
A_SUM = A.sum

if A.count { |a| a >= Rational(A_SUM, 4 * M) } >= M
  puts 'Yes'
else
  puts 'No'
end
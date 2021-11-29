A, B, C, K = gets.split.map(&:to_i)

if K <= A
  # Aのみで完結する場合
  puts K
elsif K <= A + B
  # AとBのみで完結する場合
  puts A
else
  # Cからもカードを取る必要がある場合
  puts A - (K - (A + B))
end

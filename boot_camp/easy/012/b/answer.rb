X = gets.to_i
ans = 0

div, mod = X.divmod(500)
ans += div * 1_000
ans += mod / 5 * 5

puts ans
N, BLUE, RED = gets.split.map(&:to_i)

ans, count = 0, N / (BLUE + RED)
ans += BLUE * count
ans += [BLUE, N - (BLUE + RED) * count].min

puts ans
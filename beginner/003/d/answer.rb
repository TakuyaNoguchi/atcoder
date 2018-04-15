R, C = gets.split.map(&:to_i)
X, Y = gets.split.map(&:to_i)
D, L = gets.split.map(&:to_i)

def fact(n)
  return 1 if n <= 0
  (1..n).inject(:*)
end

space_pattern = (R - X + 1) * (C - Y + 1)
put_pattern = fact(X * Y) / (fact(D) * fact(L))

puts space_pattern * put_pattern % (10**9 + 7)
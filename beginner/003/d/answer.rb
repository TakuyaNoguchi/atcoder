# Submission #2252452 を元に実装

R, C = gets.split.map(&:to_i)
X, Y = gets.split.map(&:to_i)
D, L = gets.split.map(&:to_i)

def fact(n)
  return 1 if n <= 0
  (1..n).inject(:*)
end

def comb(n, r)
  return 0 if n < 0 || r < 0 || n < r
  fact(n) / (fact(r) * fact(n - r))
end

def pattern(x, y)
  return 0 if x < 0 || y < 0
  comb(x * y, D) * comb(x * y - D, L)
end

space_pattern = (R - X + 1) * (C - Y + 1)
put_pattern =  pattern(X, Y) -
               pattern(X - 1, Y) * 2 - pattern(X, Y - 1) * 2 +
               pattern(X - 2, Y) + pattern(X, Y - 2) +
               pattern(X - 1, Y - 1) * 4 -
               pattern(X - 1, Y - 2) * 2 - pattern(X - 2, Y - 1) * 2 +
               pattern(X - 2, Y - 2)

puts space_pattern * put_pattern % (10**9 + 7)
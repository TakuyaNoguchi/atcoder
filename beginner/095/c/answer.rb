A, B, C, X, Y = gets.split.map(&:to_i)

if X == Y
  if C * 2 <= A || C * 2 <= B
    puts C * 2 * X
  else
    puts A * X + B * Y
  end

  exit
end

if C * 2 <= A && C * 2 <= B
  puts C * 2 * [X, Y].max
elsif C * 2 <= A
  diff = Y - X

  puts C * 2 * X + B * (diff.positive? ? diff : 0)
elsif C * 2 <= B
  diff = X - Y

  puts C * 2 * Y + A * (diff.positive? ? diff : 0)
elsif C * 2 <= A + B
  remain = (X < Y ? B : A) * (X - Y).abs

  puts C * 2 * [X, Y].min + remain
else
  puts A * X + B * Y
end
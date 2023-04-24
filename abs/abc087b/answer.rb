A, B, C, X = gets.to_i, gets.to_i, gets.to_i, gets.to_i
ans = 0

0.upto(A) do |a|
  0.upto(B) do |b|
    0.upto(C) do |c|
      ans += 1 if a * 500 + 100 * b + 50 * c == X
    end
  end
end

puts ans
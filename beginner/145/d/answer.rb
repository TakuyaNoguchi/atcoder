X, Y = gets.split.map(&:to_i)

MOD = 10**9 + 7;

if ((X + Y) % 3).zero? && X <= 2 * Y && Y <= 2 * X
  n = (X + Y) / 3
  k = (n - (X - Y).abs) / 2
  k = [n - k, k].min
  prod = 1

  (n - k + 1).upto(n) do |i|
    prod *= i % MOD
    prod %= MOD
  end

  1.upto(k) do |i|
    # フェルマーの小定理: x^(p - 2) ≡ 1/x (mod p)
    prod *= i.pow(MOD - 2, MOD)
    prod %= MOD
  end

  puts prod % MOD
else
  puts 0
end

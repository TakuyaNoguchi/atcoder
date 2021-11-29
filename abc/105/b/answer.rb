N = gets.to_i
exists = false

0.upto(N / 4) do |f|
  0.upto(N / 7) do |s|
    exists = true if f * 4 + s * 7 == N
  end
end

puts exists ? 'Yes' : 'No'

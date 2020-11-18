N, S = gets.to_i, gets.chomp

if N.even? && S[0...(N / 2)] == S[(N / 2)...N]
  puts 'Yes'
else
  puts 'No'
end

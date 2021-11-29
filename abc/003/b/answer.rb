S, T = gets.chomp.chars, gets.chomp.chars
CANDIDATE = 'atcoder'.chars

S.zip(T).each do |s, t|
  next if s == '@' && t == '@'
  next if s == t

  if s == '@' && CANDIDATE.include?(t) ||
     t == '@' && CANDIDATE.include?(s)
    next
  end

  puts 'You will lose'
  exit
end

puts 'You can win'
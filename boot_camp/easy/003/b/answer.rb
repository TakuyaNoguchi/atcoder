N, A, B = gets.split.map(&:to_i)

passed = 0
abroad_rank = 1

gets.chomp.chars.each do |c|
  if c == 'a' && passed < A + B
    passed += 1

    puts 'Yes'
  elsif c == 'b' && passed < A + B && abroad_rank <= B
    passed += 1
    abroad_rank += 1

    puts 'Yes'
  else
    puts 'No'
  end
end
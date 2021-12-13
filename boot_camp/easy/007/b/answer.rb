a = 3.times.map { gets.split.map(&:to_i) }
card = Array.new(3) { [false] * 3 }

gets.to_i.times do
  b = gets.to_i

  a.each_with_index do |row, i|
    row.each_with_index do |col, j|
      card[i][j] = true if col == b
    end
  end
end

if card.any?(&:all?)
  puts 'Yes'
elsif card.transpose.any?(&:all?)
  puts 'Yes'
elsif card[0][0] && card[1][1] && card[2][2]
  puts 'Yes'
elsif card[0][2] && card[1][1] && card[2][0]
  puts 'Yes'
else
  puts 'No'
end
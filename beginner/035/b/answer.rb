S, T = gets.chomp, gets.to_i
x = y = q_num = 0

S.chars.each do |d|
  case d
  when 'L'
    x -= 1
  when 'R'
    x += 1
  when 'U'
    y += 1
  when 'D'
    y -= 1
  else
    q_num += 1
  end
end

distance = x.abs + y.abs
if T == 1
  puts distance + q_num
elsif distance - q_num >= 0
  puts distance - q_num
elsif (distance - q_num).odd?
  puts 1
else
  puts 0
end

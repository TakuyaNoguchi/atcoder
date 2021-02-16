N = gets.to_i

case N
when 1
  puts 1
else
  l_i, l_i_1, l_i_2 = 0, 2, 1

  (N - 1).times do
    l_i = l_i_1 + l_i_2
    l_i_1 = l_i_2
    l_i_2 = l_i
  end

  puts l_i
end

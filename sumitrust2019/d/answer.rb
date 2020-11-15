_, S = gets.to_i, gets.chomp
answer = 0

'0'.upto('9') do |d1|
  '0'.upto('9') do |d2|
    '0'.upto('9') do |d3|
      next unless d1_pos = S.index(d1)
      next unless d2_pos = S.index(d2, d1_pos + 1)
      next unless S.index(d3, d2_pos + 1)

      answer += 1
    end
  end
end

puts answer

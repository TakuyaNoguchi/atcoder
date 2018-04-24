answer = []
s = gets.chomp.chars
count = 0
prev_char = nil

s.each_with_index do |c, i|
  if prev_char.nil?
    prev_char = c
    count += 1
    next
  end

  count += 1
  if c == prev_char
    next unless i == s.size - 1

    answer << "#{c}#{count}"
  elsif i == s.size - 1
    answer << "#{prev_char}#{count - 1}"
    answer << "#{c}1"
  else
    answer << "#{prev_char}#{count - 1}"
    prev_char = c
    count = 1
  end
end

puts answer.join
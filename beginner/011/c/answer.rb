number = gets.to_i
NG_NUMS = readlines.map(&:to_i)

if NG_NUMS.include?(number)
  puts 'NO'
  exit
end

nums = [3, 2, 1]

100.times do
  selected_num = nums.find { |num|
    !NG_NUMS.include?(number - num) && number - num >= 0
  }

  if selected_num.nil?
    puts 'NO'
    exit
  end

  number -= selected_num
  break if number.zero?
end

puts number.zero? ? 'YES' : 'NO'
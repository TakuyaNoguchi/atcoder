W, H = gets.split.map(&:to_i)

if (W / 4) * 3 == H
  puts '4:3'
else
  puts '16:9'
end
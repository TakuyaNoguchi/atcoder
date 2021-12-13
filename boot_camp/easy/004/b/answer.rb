N = gets.to_i
ceil = (N / 1.08).ceil
floor = (N / 1.08).floor

if (ceil * 1.08).floor == N
  puts ceil
elsif (floor * 1.08).floor == N
  puts floor
else
  puts ':('
end
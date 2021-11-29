N = gets.to_i
S = gets.chomp

min = 10**6
w_sum = e_sum = 0
from_left = []
from_right = []
S.size.times do |i|
  from_left << w_sum
  from_right << e_sum

  w_sum += 1 if S[i] == 'W'
  e_sum += 1 if S[-(i + 1)] == 'E'
end

S.size.times do |i|
  min = [min, from_left[i] + from_right[-(i + 1)]].min
end

puts min
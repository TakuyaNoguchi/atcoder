s = gets.to_i
nums = {}
answer = 1

until nums[s]
  nums[s] = true
  s = s.even? ? (s / 2) : (3 * s + 1)
  answer += 1
end

puts answer
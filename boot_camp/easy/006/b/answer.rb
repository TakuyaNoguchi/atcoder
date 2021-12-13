H, W = gets.split.map(&:to_i)

if H == 1 || W == 1
  puts 1
else
  div, mod = (H * W).divmod(2)

  puts div + mod
end
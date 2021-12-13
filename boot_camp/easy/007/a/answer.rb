N = gets.to_i

div, mod = N.divmod(2)
div += 1 unless mod.zero?

puts div
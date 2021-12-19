b = gets.chomp
mapping = { 'A' => 'T', 'C' => 'G' }

puts mapping[b] || mapping.invert[b]
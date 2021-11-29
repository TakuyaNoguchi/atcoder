readlines.map { |l| l.chomp.split('') }.reverse_each do |l|
  puts l.reverse.join
end

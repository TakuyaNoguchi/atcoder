gets.to_i.times do
  _, a = gets.to_i, gets.split.map(&:to_i)
  puts a.count(&:odd?)
end
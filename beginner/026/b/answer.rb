N = gets.to_i
inputs = readlines.map(&:to_i).sort_by(&:-@)

puts [*0...N].inject(0) { |area, i|
  area + (i.even? ? inputs[i]**2 : -inputs[i]**2)
} * Math::PI

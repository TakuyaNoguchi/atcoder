gets
num_of_people = Hash.new(0)

readlines.each do |l|
  num_of_people[l[0]] += 1
end

selection = %w[M A R C H].combination(3)

puts selection.inject(0) { |sum, (a, b, c)|
  sum + num_of_people.values_at(a, b, c).inject(:*)
}

N = gets.to_i

relations = Hash.new { |h, k| h[k] = [] }
2.upto(N) do |employee_num|
  relations[gets.to_i] << employee_num
end

salaries = Hash.new(1)
N.downto(1) do |employee_num|
  subordinates = relations[employee_num]
  next if subordinates.empty?

  min, max = subordinates.map { |subordinate_num|
    salaries[subordinate_num]
  }.minmax

  salaries[employee_num] = max + min + 1
end

puts salaries[1]

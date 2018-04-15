N, M = gets.split.map(&:to_i)
relation = Hash.new { |h, k| h[k] = [] }

M.times do
  x, y = gets.split.map(&:to_i)
  relation[x] << y
  relation[y] << x
end

result = 1
1.upto(N) do |n|
  possible = [*1..N].combination(n).any? { |group|
    group.all? { |member|
      (group - relation[member] - [member]).empty?
    }
  }

  result = n if possible
end

puts result
N, K = gets.split.map(&:to_i)
S = gets.chomp.chars
sorted = S.sort
answer = []

N.times do |index|
  s_first = S[0..index]
  s_second = S[(index + 1)..-1]

  sorted.each_with_index do |c, i|
    first_diff = s_first.zip(answer + [c]).count { |a, b| a != b }

    copied_s_second = s_second.dup
    (sorted[0...i] + sorted[(i + 1)..-1]).each do |sorted_c|
      delete_index = copied_s_second.index(sorted_c)
      next if delete_index.nil?

      copied_s_second.delete_at(delete_index)
    end

    next if first_diff + copied_s_second.size > K

    answer << sorted.delete_at(i)
    break
  end
end

puts answer.join
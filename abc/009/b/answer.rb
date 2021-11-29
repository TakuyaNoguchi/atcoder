gets
puts readlines.map(&:to_i).uniq.sort_by(&:-@)[1]
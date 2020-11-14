puts gets.chomp.scan(/[ACGT]+/).map(&:size).max || 0

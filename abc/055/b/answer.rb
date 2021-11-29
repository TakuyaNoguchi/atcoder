puts [*1..gets.to_i].inject { |prod, n| prod * n % (10**9 + 7) }

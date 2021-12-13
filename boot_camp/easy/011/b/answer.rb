puts 1.upto(gets.to_i).max_by { |n|
  cnt = 0
  while n.even?
    cnt += 1
    n /= 2
  end

  cnt
}

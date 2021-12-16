gets
puts gets.split.map(&:to_i).each_cons(3).count { |p1, p2, p3|
  p1 <= p2 && p2 <= p3 || p1 >= p2 && p2 >= p3
}
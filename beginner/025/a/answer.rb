S = gets.chomp
n = gets.to_i

puts catch(:answer) {
  S.each_char do |c1|
    S.each_char do |c2|
      n -= 1

      throw :answer, c1 + c2 if n.zero?
    end
  end
}

N, A, B = gets.split.map(&:to_i)
point = 0

readlines.each do |l|
  s, d = l.chomp.split
  d = d.to_i

  move = if d < A
           A
         elsif d > B
           B
         else
           d
         end

  point += (s == 'East' ? move : -move)
end

dir = if point.positive?
        'East '
      elsif point.negative?
        'West '
      else
        ''
      end

puts "#{dir}#{point.abs}"

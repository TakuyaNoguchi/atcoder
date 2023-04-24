N, Y = gets.split.map(&:to_i)

0.upto(N) do |x|
  0.upto(N - x) do |y|
    z = N - x - y
    next unless x * 10_000 + y * 5_000 + z * 1_000 == Y

    puts "#{x} #{y} #{z}"
    exit
  end
end

puts '-1 -1 -1'
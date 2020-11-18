N = gets.to_i
x_y = readlines.map { |l| l.split.map(&:to_i) }

distances = Array.new(N) { Array.new(N) }

x_y.each_with_index do |(xi, yi), i|
  x_y.each_with_index do |(xj, yj), j|
    distances[i][j] = Math.sqrt((xi - xj)**2 + (yi - yj)**2)
  end
end

routes = [*0...N].permutation(N)
puts (routes.inject(0) { |sum, route|
  sum + route.each_cons(2).inject(0) { |cost, (from, to)|
    cost + distances[from][to]
  }
} / routes.size).round(10)

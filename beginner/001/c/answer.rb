deg, dis = gets.split.map(&:to_i)
dis = (dis / 60.0).round(1)

w = 0
w += 1 if dis >= 0.3
w += 1 if dis >= 1.6
w += 1 if dis >= 3.4
w += 1 if dis >= 5.5
w += 1 if dis >= 8.0
w += 1 if dis >= 10.8
w += 1 if dis >= 13.9
w += 1 if dis >= 17.2
w += 1 if dis >= 20.8
w += 1 if dis >= 24.5
w += 1 if dis >= 28.5
w += 1 if dis >= 32.7

dir = if w.zero?
        'C'
      else
        %w[N NNE NE ENE E ESE SE SSE S SSW SW WSW W WNW NW NNW][((deg * 10 + 1125) / 2250) % 16]
      end

puts "#{dir} #{w}"

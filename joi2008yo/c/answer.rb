N = gets.to_i
taro = readlines.map(&:to_i).sort
hanako = [*1..(2 * N)] - taro

current = nil
turn = 0
while !taro.empty? && !hanako.empty?
  cards = (turn.even? ? taro : hanako)

  current = if current
              card = cards.find { |c| c > current }
              card ? cards.delete(card) : nil
            else
              cards.shift
            end

  turn += 1
end

puts hanako.size, taro.size

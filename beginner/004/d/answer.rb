R, G, B = gets.split.map(&:to_i)

def calc(n)
  sum = 0
  count = 1

  2.upto(n) do |i|
    sum += count
    count += 1 if i.odd?
  end

  sum
end

puts calc(R) + calc(G) + calc(B)
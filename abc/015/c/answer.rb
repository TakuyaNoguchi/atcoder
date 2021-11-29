N, K = gets.split.map(&:to_i)

t = readlines.map { |l| l.split.map(&:to_i) }

[*0...K].repeated_permutation(N).each do |perm|
  xor = (1...N).zip(perm[1..-1]).inject(t[0][perm[0]]) { |memo, (n, p)|
    memo ^ t[n][p]
  }

  if xor.zero?
    puts 'Found'
    exit
  end
end

puts 'Nothing'
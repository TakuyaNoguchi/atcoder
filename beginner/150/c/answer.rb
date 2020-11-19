N = gets.to_i
permutation = [*1..N].permutation(N).to_a.map { |perm| perm.join(' ') }
P = gets.chomp
Q = gets.chomp

puts ((permutation.index(P) + 1) - (permutation.index(Q) + 1)).abs

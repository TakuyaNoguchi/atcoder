N = gets.to_i
P = gets.split.map(&:to_i)
Q = gets.split.map(&:to_i)
permutation = [*1..N].permutation(N).to_a

puts ((permutation.index(P) + 1) - (permutation.index(Q) + 1)).abs
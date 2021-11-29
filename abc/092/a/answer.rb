A, B, C, D = [gets, gets, gets, gets].map(&:to_i)

train = A <= B ? A : B
bus = C <= D ? C : D

puts train + bus
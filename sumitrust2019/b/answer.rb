percent = 1.08
N = gets.to_i
guess = N / percent

answer = if (guess.floor * percent).to_i == N
           guess.floor
         elsif (guess.ceil * percent).to_i == N
           guess.ceil
         else
           ':('
         end

puts answer

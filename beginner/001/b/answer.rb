m = gets.to_i
vv = if m < 100
       0
     elsif m <= 5_000
       m / 100
     elsif m <= 30_000
       m / 1_000 + 50
     elsif m <= 70_000
       (m / 1_000 - 30) / 5 + 80
     else
       89
     end

puts format('%02d', vv)
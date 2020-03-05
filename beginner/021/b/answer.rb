N = gets.to_i
from, to = gets.split.map(&:to_i)
gets
routes = gets.split.map(&:to_i)

if routes.include?(from) || routes.include?(to) ||
   routes.size != routes.uniq.size
  puts 'NO'
else
  puts 'YES'
end

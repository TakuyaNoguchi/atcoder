N = gets.to_i
S = gets.chomp

if S.size.even?
  puts '-1'
  exit
end

count = 0
str = 'b'
while str.size < N
  str = case count % 3
        when 0
          "a#{str}c"
        when 1
          "c#{str}a"
        else
          "b#{str}b"
        end

  count += 1
end

puts str == S ? count : -1

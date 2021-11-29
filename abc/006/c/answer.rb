N, M = gets.split.map(&:to_i)
ADULT_LEGS, OLD_MAN_LEGS, BABY_LEGS = 2, 3, 4

0.upto(1) do |old_man_num|
  0.upto(N) do |adult_num|
    baby_num = N - adult_num - old_man_num
    next if baby_num.negative?

    legs = ADULT_LEGS * adult_num +
           OLD_MAN_LEGS * old_man_num +
           BABY_LEGS * baby_num

    if legs == M
      puts "#{adult_num} #{old_man_num} #{baby_num}"
      exit
    end
  end
end

puts '-1 -1 -1'
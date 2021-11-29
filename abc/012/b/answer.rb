sec = gets.to_i
min, sec = sec.divmod(60)
hour, min = min.divmod(60)

printf "%02d:%02d:%02d\n", hour, min, sec
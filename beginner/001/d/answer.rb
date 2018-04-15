N = gets.to_i
result = Array.new(24 * 12 + 1, false)

N.times do
  s_t, e_t = gets.chomp.split('-')
  start_time = s_t.match(/(\d{2})(\d{2})/) { |matched|
    min = matched[2].to_i
    min -= min % 5
    matched[1].to_i * 12 + min / 5
  }
  end_time = e_t.match(/(\d{2})(\d{2})/) { |matched|
    min = matched[2].to_i
    min += 5 - min % 5 unless (min % 5).zero?
    matched[1].to_i * 12 + min / 5
  }

  result.fill(true, start_time...end_time)
end

raining = false
result.each_with_index do |rain, i|
  next if rain == raining

  raining = rain
  end_char = raining ? '-' : "\n"
  printf "%02d%02d#{end_char}", i / 12, i % 12 * 5
end
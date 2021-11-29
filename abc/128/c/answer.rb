N, M = gets.split.map(&:to_i)
S = Array.new(M) { gets.split.map(&:to_i)[1..-1] }
switches = S.flatten.uniq
P = gets.split.map(&:to_i)

puts [*0...2**N].count { |bit|
  on_switches = [*0...N].map { |n|
    next if (2**n & bit).zero?

    switches[n]
  }.compact

  P.each.with_index.all? { |p, i|
    p == (S[i].count { |s| on_switches.include?(s) } % 2)
  }
}

require 'tsort'

class Hash
  include TSort

  alias tsort_each_node each_key

  def tsort_each_child(node, &block)
    fetch(node).each(&block)
  end
end

N, M = gets.split.map(&:to_i)
graph = (1..N).to_h { |i| [i, []] }

M.times do
  u, v = gets.split.map(&:to_i)
  graph[u] << v
  graph[v] << u
end

puts graph.strongly_connected_components.count

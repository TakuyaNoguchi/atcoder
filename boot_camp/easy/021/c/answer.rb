require 'prime'

X = gets.to_i
puts X.prime? ? X : Prime.find { |p| p > X }
n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)

min = a_arr.min
max = a_arr.max

puts max - min

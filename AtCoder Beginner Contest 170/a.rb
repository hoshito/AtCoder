x_arr = gets.chomp.split(" ").map(&:to_i)
puts x_arr.index{|x| x == 0} + 1
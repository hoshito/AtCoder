n,k = gets.chomp.split(" ").map(&:to_i)
p_arr = gets.chomp.split(" ").map(&:to_i)

puts p_arr.sort[0..k-1].sum
arr = gets.chomp.split(" ").map(&:to_i)
puts arr.sort.reverse[2]

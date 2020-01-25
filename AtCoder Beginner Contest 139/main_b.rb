a,b = gets.chomp.split(" ").map(&:to_i)

puts ((b - 1) / (a - 1).to_f).ceil

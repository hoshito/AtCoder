x,y,z = gets.chomp.split(" ").map(&:to_i)

x -= z
count = x / (y + z)

puts count

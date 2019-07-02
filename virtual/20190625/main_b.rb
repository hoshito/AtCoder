a,b = gets.chomp.split(" ").map(&:to_i)

i = b - a
puts (1..(i-1)).inject(&:+) - a

x = gets.chomp.to_i

i = x / 500
x -= 500 * i
j = x / 5

puts i * 1000 + j * 5

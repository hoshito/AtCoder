n = gets.chomp.to_i
a = n % 1000
if a == 0
  puts 0
else
  puts 1000 - a
end
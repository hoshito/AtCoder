n = gets.chomp.to_i
a = gets.chomp.to_i

count = n / 500
if n - 500 * count <= a then
  puts "Yes"
else
  puts "No"
end

n,k,m = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i)

x = n * m - a_arr.inject(:+)
if x < 0 then
  puts 0
elsif x > k then
  puts -1
else
  puts x
end

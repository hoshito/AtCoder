n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)

count = 0
while a_arr.all?{|a| a % 2 == 0} do
  count += 1
  a_arr.map!{|a| a /= 2}
end

puts count

n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)

count = 0
(1..n).each do |i|
  count += 1 if i % 2 == 1 && a_arr[i-1] % 2 == 1
end
puts count
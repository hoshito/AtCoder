n = gets.chomp.to_i
x_arr = gets.chomp.split(" ").map(&:to_i)

min = 9999999999999
(1..100).each do |p|
  sum = 0
  x_arr.each do |x|
    sum += (p - x) ** 2
  end
  min = sum if sum < min
end
puts min

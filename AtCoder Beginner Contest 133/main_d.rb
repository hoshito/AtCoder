n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)

x_arr = []

x_arr << a_arr.map.with_index do |a, i|
  sign = (i % 2 == 0 ? 1 : -1)
  sign * a
end.inject(:+) / 2

a_arr[0..-2].each_with_index do |a, i|
  x_arr << a - x_arr[i]
end

puts x_arr.map{|x| (x * 2).to_s }.join(" ")

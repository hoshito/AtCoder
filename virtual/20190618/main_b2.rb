n = gets.chomp.to_i
l_arr = [2, 1]

(2..n).each do |i|
  l_arr[i] = l_arr[i-1] + l_arr[i-2]
end

puts l_arr[n]

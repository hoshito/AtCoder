n = gets.chomp.to_i

a_arr = []
b_arr = []
n.times do
  a, b = gets.chomp.split(" ")
  a_arr << a.to_i
  b_arr << b.to_i
end

a_arr.sort!
b_arr.sort!

if n % 2 == 0
  median_a = (a_arr[n / 2 - 1] + a_arr[n / 2]).to_f / 2
  median_b = (b_arr[n / 2 - 1] + b_arr[n / 2]).to_f / 2
  puts ((median_b - median_a) * 2 + 1).to_i
else
  median_a = a_arr[(n - 1)/ 2]
  median_b = b_arr[(n - 1)/ 2]
  puts median_b - median_a + 1
end

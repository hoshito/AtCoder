n,k = gets.chomp.split(" ").map(&:to_i)

tmp_k = k
b_arr = []
i = 1
while tmp_k > 0 do
  b_arr << tmp_k
  tmp_k /= 2
end

puts b_arr

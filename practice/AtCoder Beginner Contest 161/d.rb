k = gets.chomp.to_i

if k <= 9
  puts k
  exit
end

# 1桁目
arr = []
1.upto(9){|i| arr << i }

k -= 10 

# 2桁目以降
while true do
  tmp_arr = []
  arr.each do |a|
    q = a % 10
    if q == 0
      tmp_arr << a * 10 + q
      tmp_arr << a * 10 + (q + 1)
    elsif q == 9
      tmp_arr << a * 10 + (q - 1)
      tmp_arr << a * 10 + q
    else
      tmp_arr << a * 10 + (q - 1)
      tmp_arr << a * 10 + q
      tmp_arr << a * 10 + (q + 1)
    end
  end
  if k < tmp_arr.length
    puts tmp_arr[k]
    exit 0
  end
  k -= tmp_arr.length
  arr = tmp_arr
end


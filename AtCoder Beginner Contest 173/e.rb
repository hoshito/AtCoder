n,k = gets.chomp.split(" ").map(&:to_i)

plus_arr = []
zero_arr = []
minus_arr = []

gets.chomp.split(" ").each do |s|
  a = s.to_i
  if a > 0
    plus_arr << a
  elsif a < 0
    minus_arr << a
  else
    zero_arr << a
  end
end



plus_arr.sort_by!{|a| -a}
minus_arr.sort_by!{|a| a}

max = plus_arr.shift
min = minus_arr.shift
max_plus_i = 0
max_minus_i = -1
min_plus_i = -1
min_minus_i = 0

tmp1 = max * plus_arr[max_plus_i + 1]
tmp2 = max * minus_arr[max_minus_i + 1]
tmp3 = min * plus_arr[min_plus_i + 1]
tmp4 = min * minus_arr[min_minus_i + 1]

tmp_max = -10000000000
tmp_min = 10000000000







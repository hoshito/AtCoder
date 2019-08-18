s_arr = gets.chomp.split("").map{|c| c == "R" ? 0 : 1} + [0]

r_flag = true
tmp = 0
tmp_i = -1
count_arr = []
s_arr.each_cons(2).with_index do |(s1, s2), i|
  if r_flag then
    tmp += 1
    if s1 + s2 == 0 then
      count_arr[i] = 0
    else
      count_arr[i+1] = tmp / 2 + 1
      count_arr[i] = tmp - (tmp / 2)
      tmp = 0
      r_flag = false
      tmp_i = i
    end
  else
    if s1 + s2 == 2 then
      tmp += 1
      count_arr[i+1] = 0
    else
      count_arr[tmp_i+1] += tmp / 2
      count_arr[tmp_i] += tmp - (tmp / 2)
      r_flag = true
      tmp = 0
    end
  end
end

puts count_arr.join(" ")

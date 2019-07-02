n = gets.chomp.to_i

count = 0

arr = [1]

tmp6 = 1
tmp9 = 1
while true do
  tmp6_flag = true
  tmp9_flag = true
  if n >= tmp6 * 6 then
    tmp6 *= 6
    arr << tmp6
    tmp6_flag = false
  end
  if n >= tmp9 * 9 then
    tmp9 *= 9
    arr << tmp9
    tmp9_flag = false
  end
  if tmp6_flag && tmp9_flag then
    break
  end
end

tmp_n = n
arr.sort.reverse.each do |a|
  num = tmp_n / a
  if num > 0 then
    tmp_n -= a * num
    count += num
  end
end



puts count

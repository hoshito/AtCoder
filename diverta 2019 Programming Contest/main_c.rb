n = gets.chomp.to_i

a_flag_count = 0
b_flag_count = 0
a_b_flag_count = 0
count = 0
n.times do |t|
  str = gets.chomp
  count += str.scan(/AB/).size
  a_flag = str[-1] == "A"
  b_flag = str[0] == "B"
  if a_flag && b_flag then
    a_b_flag_count += 1
  elsif a_flag then
    a_flag_count += 1
  elsif b_flag then
    b_flag_count += 1
  end
end

if a_b_flag_count > 0 then
  count += (a_b_flag_count - 1)
  if a_flag_count > 0 then
    count += 1
    a_flag_count -= 1
  end
  if b_flag_count > 0 then
    count += 1
    b_flag_count -= 1
  end
  count += [a_flag_count, b_flag_count].min
else
  count += [a_flag_count, b_flag_count].min
end

puts count


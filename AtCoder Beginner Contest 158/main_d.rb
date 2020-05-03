s = gets.chomp
q = gets.chomp.to_i
q_arr = q.times.map{gets.chomp.split(" ")}

s_arr = s.split("")
r_flag = false
q_arr.each do |(t, f, c)|
  if t == "1" then
    r_flag = !r_flag
  elsif f == "1" then
    if r_flag then
      s_arr.push(c)
    else
      s_arr.unshift(c)
    end
  else
    if r_flag then
      s_arr.unshift(c)
    else
      s_arr.push(c)
    end
  end
end

if r_flag then
  puts s_arr.reverse.join("")
else
  puts s_arr.join("")
end

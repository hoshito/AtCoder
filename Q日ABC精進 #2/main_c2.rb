n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)

count = a_arr.length
tmp = 0
a_arr.each_cons(2) do |(a1, a2)|
  if a1 < a2 then
    tmp += 1
  else
    count += (tmp) * (tmp+1) / 2
    tmp = 0
  end
end
if tmp > 0 then
  count += (tmp) * (tmp+1) / 2
end

puts count

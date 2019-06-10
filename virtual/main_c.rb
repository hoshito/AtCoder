n,m,x=gets.chomp.split(" ").map(&:to_i)
a_arr=gets.chomp.split(" ").map(&:to_i)

l_count = 0
r_count = 0
a_arr.each do |a|
  if a < x then
    l_count += 1
  else
    r_count += 1
  end
end

if l_count > r_count then
  puts r_count
else
  puts l_count
end





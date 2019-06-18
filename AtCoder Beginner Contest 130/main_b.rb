n,x = gets.chomp.split(" ").map(&:to_i)
l_arr = gets.chomp.split(" ").map(&:to_i)

count = 1

d = 0
l_arr.each do |l|
  d = d + l
  if (d <= x) then
    count += 1
  end
end

puts count

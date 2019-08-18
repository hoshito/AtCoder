n = gets.chomp.to_i
a_arr = n.times.map{gets.to_i}

tmp = a_arr.sort

max = tmp[-1]
max2 = tmp[-2]

a_arr.each do |a|
  if a == max then
    puts max2
  else
    puts max
  end
end

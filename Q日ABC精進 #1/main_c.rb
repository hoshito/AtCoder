n = gets.chomp.to_i
a_arr = n.times.map{gets.to_i}

max = 0
max_i = -1
a_arr.each_with_index do |a, i|
  if a > max then
    max = a
    max_i = i
  end
end

second = 0
a_arr.each_with_index do |a, i|
  if a > second && i != max_i then
    second = a
  end
end

(0..a_arr.length-1).each do |i|
  if max_i == i then
    puts second
  else
    puts max
  end
end

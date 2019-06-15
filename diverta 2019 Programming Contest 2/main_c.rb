n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i).sort

neg_num = 0
pos_num = 0
a_arr.each do |a|
  if a < 0 then
    neg_num += 1
  else
    pos_num += 1
  end
end

puts_arr = []
(n-1).times do
  if a_arr.length == 2 then
    puts_arr << "#{a_arr[1]} #{a_arr[0]}"
    puts a_arr[1] - a_arr[0]
    break
  end
  if neg_num > pos_num then
    x = a_arr.pop
    y = a_arr.shift
    puts_arr << "#{x} #{y}"
    a_arr.push(x - y)
  else
    x = a_arr.shift
    y = a_arr.pop
    puts_arr << "#{x} #{y}"
    a_arr.unshift(x - y)
  end
  if x < 0 then
    neg_num -= 1
  else
    pos_num -= 1
  end
  if y < 0 then
    neg_num -= 1
  else
    pos_num -= 1
  end
  if x - y < 0 then
    neg_num += 1
  else
    pos_num += 1
  end
end


puts_arr.each do |str|
  puts str
end




n = gets.chomp.to_i
l_arr = gets.chomp.split(" ").map(&:to_i).sort_by{|l| -l}

count = 0
(0..l_arr.length-3).each do |i|
  max = l_arr[i]
  i1 = i + 1
  i2 = l_arr.length
  while i1 < i2 do
    while true do
      i2 -= 1
      break if i1 >= i2
      break if max < l_arr[i1] + l_arr[i2]
    end
    count += (i2 - i1 + 1) * (i2 - i1) / 2
    while true do
      i1 += 1
      break if max < l_arr[i1] + l_arr[i2] || i1 >= i2
    end
    count += (i2 - i1 + 1) * (i2 - i1) / 2
  end
end

puts count

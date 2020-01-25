h,w = gets.chomp.split(" ").map(&:to_i)
aa_arr = h.times.map{gets.chomp.split(" ").map(&:to_i)}

odd_arr = []
aa_arr.each_with_index do |a_arr, i|
  a_arr.each_with_index do |a, j|
    odd_arr << [i+1, j+1] if a % 2 == 1
  end
end

result_n = 0
result_arr = []
odd_arr.each_slice(2) do |(y1, x1), (y2, x2)|
  next if y2.nil?
  tmp_y = y1
  tmp_x = x1
  if y1 > y2 then
    (y1 - y2).times do
      result_n += 1
      result_arr << [tmp_y, tmp_x, tmp_y - 1, tmp_x]
      tmp_y -= 1
    end
  else
    (y2 - y1).times do
      result_n += 1
      result_arr << [tmp_y, tmp_x, tmp_y + 1, tmp_x]
      tmp_y += 1
    end
  end

  if x1 > x2 then
    (x1 - x2).times do
      result_n += 1
      result_arr << [tmp_y, tmp_x, tmp_y, tmp_x - 1]
      tmp_x -= 1
    end
  else
    (x2 - x1).times do
      result_n += 1
      result_arr << [tmp_y, tmp_x, tmp_y, tmp_x + 1]
      tmp_x += 1
    end
  end

end

puts result_n
result_arr.each do |r_arr|
  puts r_arr.join(" ")
end

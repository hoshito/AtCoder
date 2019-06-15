n = gets.chomp.to_i
x_y_arr = n.times.map{gets.chomp.split(" ").map(&:to_i)}

hash = {}
x_y_arr.each_with_index do |(x, y), i|
  x_y_arr.each_with_index do |(x2, y2), i2|
    next if i == i2
    diff_x = x - x2
    diff_y = y - y2
    hash[[diff_x, diff_y]] ||= 0
    hash[[diff_x, diff_y]] += 1
    #hash[[-diff_x, -diff_y]] ||= 0
    #hash[[-diff_x, -diff_y]] += 1
  end
end

if hash.size == 0 then
  puts 1
else
  puts n - hash.values.max
end

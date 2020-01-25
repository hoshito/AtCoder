s_arr = gets.chomp.split("")
min = 99999
s_arr.each_cons(3) do |arr|
  diff = (arr.join("").to_i - 753).abs
  min = diff if diff < min
end

puts min

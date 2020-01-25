n = gets.chomp.to_i
v_arr = gets.chomp.split(" ").map(&:to_i).sort

(1..n-1).each do |t|
  v1 = v_arr.shift
  v2 = v_arr.shift
  v_arr.unshift((v1 + v2) / 2.to_f)
end

puts v_arr[0]

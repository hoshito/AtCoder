n=gets.chomp.to_i
w_arr=gets.chomp.split(" ").map(&:to_i)

min = 100000000

(0..(n-1)).each do |t|
  abs = w_arr[0..t].inject(&:+).to_i - w_arr[(t+1)..-1].inject(&:+).to_i
  abs *= -1 if abs < 0
  min = abs if abs < min
end

puts min

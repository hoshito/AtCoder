n,k = gets.chomp.split(" ").map(&:to_i)
h_arr = gets.chomp.split(" ").map(&:to_i).sort_by{|h| h * (-1)}

if k >= h_arr.length then
  puts 0
else
  puts h_arr[k..-1].inject(&:+)
end



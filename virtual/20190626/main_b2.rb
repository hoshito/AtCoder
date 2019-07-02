n = gets.chomp.to_i
sum = n.to_s.split("").map(&:to_i).inject(:+)

if n % sum == 0 then
  puts "Yes"
else
  puts "No"
end


a,b = gets.chomp.split(" ").map(&:to_i)
if a <= b * 2 then
  puts 0
else
  puts a - b - b
end

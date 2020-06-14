a,b,c = gets.chomp.split(" ").map(&:to_i)
puts Math.sqrt(a) + Math.sqrt(b)
if Math.sqrt(a) + Math.sqrt(b) < Math.sqrt(c) then
  puts "Yes"
else
  puts "No"
end

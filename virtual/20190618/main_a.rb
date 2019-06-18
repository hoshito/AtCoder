a,b,c,d = gets.chomp.split(" ").map(&:to_i)

if a + b > c + d then
  puts "Left"
elsif a + b == c + d then
  puts "Balanced"
else
  puts "Right"
end



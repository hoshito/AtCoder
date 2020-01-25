a,b = gets.chomp.split(" ").map(&:to_i)

if a >= 1 && a <= 9 && b >= 1 && b <= 9 then
  puts a * b
else
  puts -1
end

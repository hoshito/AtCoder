a,b=gets.chomp.split(" ").map(&:to_i)

if a >= 13 then
  puts b
elsif a >= 6 && a<= 12 then
  puts b / 2
else
  puts 0
end



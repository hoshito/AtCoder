a,b,c=gets.chomp.split(" ").map(&:to_i)

if (a <= b && a <= c && c <= b) || (b <= a && b <= c && c <= a) then
  puts 'Yes'
else
  puts 'No'
end

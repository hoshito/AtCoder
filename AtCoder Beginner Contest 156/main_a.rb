n,r = gets.chomp.split(" ").map(&:to_i)

if n >= 10 then
  puts r
else
  puts r + (100 * (10 - n))
end

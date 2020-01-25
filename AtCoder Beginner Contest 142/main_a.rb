n = gets.chomp.to_i
if n % 2 == 0 then
  puts (n / 2) / n.to_f
else
  puts ((n / 2) + 1) / n.to_f
end

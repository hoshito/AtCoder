n,m = gets.chomp.split(" ").map(&:to_i)

if n == 1 then
  if m == 1 then
    puts 1
  elsif m == 2 then
    puts 0
  else
    puts m - 2
  end
elsif n == 2 then
  puts 0
else
  if m == 1 then
    puts n - 2
  elsif m == 2 then
    puts 0
  else
    puts (n - 2) * (m - 2)
  end
end

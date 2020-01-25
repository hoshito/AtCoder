n = gets.chomp.to_i

if n % 2 == 1 then
  puts 0
else
  count = 0
  tmp = 10
  while true do
    break if n / tmp == 0
    count += n / tmp
    tmp *= 5
  end
  puts count
end

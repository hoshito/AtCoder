n,m = gets.chomp.split(" ").map(&:to_i)

if m == 0 then
  puts n * 100
else
  puts (n - m) * 100 + 1900 * (2 ** m - 1) ** 2 / (2 ** m)
end

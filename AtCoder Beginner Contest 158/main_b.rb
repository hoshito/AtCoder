n,a,b = gets.chomp.split(" ").map(&:to_i)

ab = a + b
q = n / ab

n -= q * ab

if a > n then
  puts q * a + n
else
  puts q * a + a
end

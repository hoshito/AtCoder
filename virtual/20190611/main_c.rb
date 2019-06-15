a,b,c = gets.chomp.split(" ").map(&:to_i).sort

count = c - b

tmp_a = a + count

while tmp_a < c do
  tmp_a += 2
  count += 1
end

if tmp_a == c then
  puts count
else
  puts count + 1
end

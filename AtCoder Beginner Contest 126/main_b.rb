s = gets.chomp

a = s[0..1].to_i
b = s[2..3].to_i

flag_a = a >= 1 && a <= 12
flag_b = b >= 1 && b <= 12


if flag_a && flag_b then
  puts "AMBIGUOUS"
elsif flag_a then
  puts "MMYY"
elsif flag_b then
  puts "YYMM"
else
  puts "NA"
end


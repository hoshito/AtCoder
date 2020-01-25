n = gets.chomp.to_i

count = 0

digit = n.to_s.length

if digit == 1 then
  puts n
  exit
end

x0 = n.to_s[0].to_i
x1 = n.to_s[-1].to_i

tmp_count = 0
(1..x0).each do |i|
  (1..x1).each do |j|
    tmp_count += 1 if j <= x0
  end
end

(1..digit).each do |i|
  (1..digit).each do |j|
    tmp = (10 ** (i - 2)) * (10 ** (j - 2))
    puts "====#{tmp}"
    if i == digit || j == digit then
      tmp *= tmp_count
    else
      tmp *= 81
    end
    count += tmp
  end
end
puts count

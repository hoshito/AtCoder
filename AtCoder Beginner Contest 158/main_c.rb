a,b = gets.chomp.split(" ").map(&:to_i)

x1 = a * 100 / 8.to_f
x2 = b * 100 / 10.to_f

if x1 > x2 then
  (1..x1.to_i * 100).each do |x|
    if (x * 0.08).to_i == a && (x * 0.1).to_i == b then
      puts x
      exit
    end
  end
else
  (1..x2.to_i * 100).each do |x|
    if (x * 0.08).to_i == a && (x * 0.1).to_i == b then
      puts x
      exit
    end
  end
end
puts -1



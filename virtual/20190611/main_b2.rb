a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
x = gets.chomp.to_i

count = 0
(0..a).each do |a_i|
  (0..b).each do |b_i|
    (0..c).each do |c_i|
      count += 1 if 500 * a_i + 100 * b_i + 50 * c_i == x
    end
  end
end

puts count


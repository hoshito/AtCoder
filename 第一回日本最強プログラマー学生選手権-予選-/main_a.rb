m,d = gets.chomp.split(" ").map(&:to_i)

count = 0
(1..m).each do |mi|
  (1..d).each do |di|
    d1 = di % 10
    d10 = (di - d1) / 10
    count += 1 if d1 >= 2 && d10 >= 2 && d1 * d10 == mi
  end
end

puts count

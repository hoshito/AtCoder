n = gets.chomp.to_i

(1..9).each do |i|
  (1..9).each do |j|
    if i * j == n then
      puts "Yes"
      exit 0
    end
  end
end

puts "No"

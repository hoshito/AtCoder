a,b,x = gets.chomp.split(" ").map(&:to_i)

(0..b).each do |i|
  if a + i == x then
    puts 'YES'
    exit
  end
end

puts 'NO'


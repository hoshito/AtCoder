n,y=gets.chomp.split(" ").map(&:to_i)

(0..n).each do |i1|
  (0..(n-i1)).each do |i2|
    i3 = n - i1 - i2
    if 10000 * i1 + 5000 * i2 + 1000 * i3 == y then
      puts "#{i1} #{i2} #{i3}"
      exit
    end
  end
end

puts "-1 -1 -1"



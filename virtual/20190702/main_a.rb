a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
d = gets.chomp.to_i
e = gets.chomp.to_i
k = gets.chomp.to_i

[a,b,c,d,e].each do |p|
  [a,b,c,d,e].each do |q|
    if q - p > k then
      puts ":("
     exit
    end
  end
end

puts "Yay!"

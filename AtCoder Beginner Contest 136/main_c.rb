n = gets.chomp.to_i
h_arr = gets.chomp.split(" ").map(&:to_i)

count = 0
h_arr.each_cons(2) do |h1, h2|
  if h1 - h2 >= 2 then
    puts "No"
    exit 0
  end
  if h1 > h2 then
    count += 1
  elsif h1 < h2
    count = 0
  end
  if count == 2 then
    puts "No"
    exit 0
  end
end

puts "Yes"

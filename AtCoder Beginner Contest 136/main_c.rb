n = gets.chomp.to_i
h_arr = gets.chomp.split(" ").map(&:to_i)

flag = 0
h_arr.each_cons(2) do |a, b|
  if a - b >= 2
    puts "No"
    exit 0
  end
  if a < b
    flag = 0
  elsif a > b
    flag += 1
  end
  if flag == 2
    puts "No"
    exit 0
  end
end

puts "Yes"

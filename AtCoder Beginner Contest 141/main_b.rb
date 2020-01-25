s = gets.chomp

(0..s.length-1).each do |i|
  if i % 2 == 0 then
    if s[i] == "L" then
      puts "No"
      exit 0
    end
  else
    if s[i] == "R" then
      puts "No"
      exit 0
    end
  end
end
puts "Yes"

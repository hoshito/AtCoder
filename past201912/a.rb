s = gets.chomp
3.times do |i|
  c = s[i]
  if c.to_i == 0 && c != "0" then
    puts  "error"
    exit 0
  end
end
puts s.to_i * 2

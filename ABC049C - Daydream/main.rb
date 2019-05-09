# 入力
s = gets.chomp

while s.length > 0 do
  if s.end_with?("dreamer") then
    s = s[0..-8]
  elsif s.end_with?("eraser") then
    s = s[0..-7]
  elsif s.end_with?("dream") then
    s = s[0..-6]
  elsif s.end_with?("erase") then
    s = s[0..-6]
  else
    puts "NO"
    exit 0
  end
end

# sの長さが0なので
puts "YES"

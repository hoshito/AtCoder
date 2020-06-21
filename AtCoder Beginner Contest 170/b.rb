x,y = gets.chomp.split(" ").map(&:to_i)

# 鶴がa匹, 亀がb匹とすると
# a + b == x
# 2 * a + 4 * b == y
# の連立方程式
a = 2 * x - y / 2
b = x - a

if y % 2 == 0 && a >= 0 && b >= 0
  puts "Yes"
else
  puts "No"
end

a,b = gets.chomp.split(" ")
a = a.to_i
# 文字列 -> 整数 (小数で扱うと誤差が生まれるため)
b = b.gsub(".", "").to_i

# bは小数第二位まで与えられていることが確定しているため100で割る
puts (a * b / 100)

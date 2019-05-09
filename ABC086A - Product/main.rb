# 入力
a, b = gets.split(" ").map(&:to_i)
# 出力
puts (a * b) % 2 == 1 ? "Odd" : "Even"

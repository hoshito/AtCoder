# 入力
a = gets.to_i # 500円玉の枚数
b = gets.to_i # 100円玉の枚数
c = gets.to_i # 50円玉の枚数
x = gets.to_i # ちょうどx円にする

pattern = 0
# 計算に使う一時的な枚数
t_a = 0 # 500円玉
t_b = 0 # 100円玉
t_c = 0 # 50円玉
# 組み合わせの数だけループ(0枚も考慮するので+1していることに注意)
( (a + 1) * (b + 1) * (c + 1) ).times do
  if 500 * t_a + 100 * t_b + 50 * t_c == x
    pattern += 1
  end
  t_c += 1
  # 繰り上がり処理
  if t_c > c then
    t_c = 0
    t_b += 1
    if t_b > b then
      t_a += 1
      t_b = 0
    end
  end
end

# 出力
puts pattern


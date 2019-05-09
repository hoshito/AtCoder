# 入力
a = gets.to_i # 500円玉の枚数
b = gets.to_i # 100円玉の枚数
c = gets.to_i # 50円玉の枚数
x = gets.to_i # ちょうどx円にする

pattern = 0
# 各硬化で0枚からa枚の組み合わせで計算する
(a + 1).times do |t_a|
  break if 500 * t_a > x # 以降の処理でtmpは増えるだけなので
  (b + 1).times do |t_b|
    break if 500 * t_a + 100 * t_b > x
    (c + 1).times do |t_c|
      if 500 * t_a + 100 * t_b + 50 * t_c > x then
        break
      elsif 500 * t_a + 100 * t_b + 50 * t_c == x then
        pattern += 1
        break
      end
    end
  end
end

puts pattern

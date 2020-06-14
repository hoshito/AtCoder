require 'prime'

n = gets.chomp.to_i

# 階差数列
# 2 ** 45 > 10 ** 12(= nの最大値)だから45まで用意
# 2 ** 45の2は素数の最小値
arr = [1, 3, 6, 10, 15, 21, 28, 36, 45]

# 素因数分解
# pdは[[p1, p1の指数], [p2, p2の指数], ... ]のような形
pd = n.prime_division

# n = p1^e1 * p2^e2 * ... のようにしたとき
# p1^1), p1^2, ... でnを順番に割っていきたい
result = 0
pd.each do |(p, exp)|
#  # 階差数列を利用して exp -> p^iでnを順番に割れる個数に変換
#  # ex) exp = 7 なら p^1, p^2, p^3 の3回で割れる. p^4では割れない
#  result += arr.index{|a| a > exp}
i = 1
cnt = 0
while exp > 0 do
  exp -= i
  i += 1
  cnt += 1 if exp >= 0
end
result += cnt
end

puts result

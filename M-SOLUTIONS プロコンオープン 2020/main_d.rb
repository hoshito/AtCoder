n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)
# 添字調整
a_arr.unshift(nil)

# i日目の最大所持金
dp = [nil, 1000]
(2..n).each do |i|
  # 前日から何もしない場合
  dp[i] = dp[i-1]
  # j日目で買ってi日目で売る場合
  (1..i-1).each do |j|
    # j日目で買う株数
    stock = dp[j] / a_arr[j]
    # j日目の残金 + i日目で得られる金額
    tmp_yen = (dp[j] - stock * a_arr[j]) + (stock * a_arr[i])
    dp[i] = tmp_yen if tmp_yen > dp[i]
  end
end

puts dp[-1]

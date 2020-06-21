n = gets.chomp.to_i
h_arr = gets.chomp.split(" ").map(&:to_i)

# i番目にたどり着くまでのコストの総和の最小値
dp = [0, (h_arr[1] - h_arr[0]).abs]
(2..n-1).each do |i|
  dp[i] = [
    dp[i-2] + (h_arr[i] - h_arr[i-2]).abs, # 2つ飛ばし
    dp[i-1] + (h_arr[i] - h_arr[i-1]).abs, # 1つ飛ばし
  ].min
end
puts dp[n-1]
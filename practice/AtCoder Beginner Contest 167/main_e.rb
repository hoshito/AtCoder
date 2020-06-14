dp = [0, 1]
0.upto(100) do |i|
  dp[i + 2] = dp[i + 1] + dp[i]
end
puts dp[100]




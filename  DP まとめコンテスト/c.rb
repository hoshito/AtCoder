n = gets.chomp.to_i
arr = n.times.map{gets.chomp.split(" ").map(&:to_i)}

a,b,c = arr[0]
dp = [[a,b,c]]

(1..n-1).each do |i|
  a, b, c = arr[i]
  prev_a, prev_b, prev_c = dp[i-1]
  dp[i] = [
    a + (prev_b > prev_c ? prev_b : prev_c),
    b + (prev_c > prev_a ? prev_c : prev_a),
    c + (prev_a > prev_b ? prev_a : prev_b),
  ]
end

puts dp[n-1].max
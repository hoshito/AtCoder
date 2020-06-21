n,w_max = gets.split.map(&:to_i)
wv_arr = n.times.map{gets.chomp.split(" ").map(&:to_i)}

v_max = wv_arr.map(&:last).inject(:+)
dp = Array.new(v_max+1, Float::INFINITY)
dp[0] = 0
wv_arr.each do |wi, vi|
  v_max.downto(vi) do |v|
    w = wi + dp[v-vi]
    dp[v] = w if w <= w_max && w < dp[v]
  end
end
puts dp.rindex{|v|v != Float::INFINITY}

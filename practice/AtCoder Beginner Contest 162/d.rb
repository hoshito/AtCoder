n = gets.chomp.to_i
s = gets.chomp
hash = {
  "R"=> 0,
  "G"=> 0,
  "B"=> 0
}
s.split("").each do |c|
  hash[c] += 1
end
ans = hash["R"] * hash["G"] * hash["B"]
0.upto(n-3) do |i|
  (i+1).upto(n-2).each do |j|
    k = 2 * j - i
    next if k >= n
    ans -= 1 if s[i] != s[j] && s[j] != s[k] && s[k] != s[i]
  end
end

puts ans

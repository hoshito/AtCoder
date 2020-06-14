require 'prime'

n = gets.chomp.to_i
# 2 ** 45 > 10 ** 12
arr = [1, 3, 6, 10, 15, 21, 28, 36, 45]
pd = n.prime_division

result = 0
pd.each do |(num, exp)|
  result += arr.index{|a| a > exp}
end

puts result

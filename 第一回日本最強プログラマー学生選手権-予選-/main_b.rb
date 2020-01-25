n,k = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i)

sum = (1 + k) * k / 2
sum2 = sum - k

count = 0
(0..a_arr.length-1).each do |i|
  (0..a_arr.length-1).each do |j|
    if i < j then
      count += sum if a_arr[i] > a_arr[j]
    elsif i == j then
      next
    else
      count += sum2 if a_arr[i] > a_arr[j]
    end
  end
  count = count % (10 ** 9 + 7)
end

puts count

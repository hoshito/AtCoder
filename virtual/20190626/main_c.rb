n,k = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i)

index1 = a_arr.index(1)

if k > index1 then
  a_arr = a_arr[(k-1)..-1]
  puts 1 + ((a_arr.length - 1) / (k - 1).to_f).ceil
elsif k > a_arr.length - index1 then
  a_arr = a_arr[0..-k]
  puts 1 + ((a_arr.length - 1) / (k - 1).to_f).ceil
else
  puts ((a_arr.length - 1 - index1) / (k - 1).to_f).ceil + ((index1 - 0) / (k - 1).to_f).ceil
end

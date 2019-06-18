n, k = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i)

count = 0
j = 0
sum = 0
(0..n-1).each do |i|
  puts "-------- i=#{i} j=#{j}"
  while sum < k && j < n do
    print "add #{a_arr[j]} (j=#{j}). sum: #{sum}->"
    sum += a_arr[j]
    puts "#{sum}"
    j += 1
  end
  puts "after while. sum=#{sum} j=#{j}"
  break if sum < k
  print "add #{n} - #{j} + 1. count: #{count}->"
  count += n - j + 1
  puts "#{count}"
  sum -= a_arr[i]
  puts "diff #{a_arr[i]} (i=#{i}). sum=#{sum}"
end

puts count

#n, k = gets.chomp.split(" ").map(&:to_i)
#a_arr = gets.chomp.split(" ").map(&:to_i)
#
#count = 0
#j = 0
#sum = 0
#(0..n-1).each do |i|
#  while sum < k do
#    if j == n then
#      break
#    else
#      sum += a_arr[j]
#      j += 1
#    end
#  end
#  break if sum < k
#  count += n - j + 1
#  sum -= a_arr[i]
#end
#
#puts count

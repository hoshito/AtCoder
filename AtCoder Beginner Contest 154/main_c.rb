require "set"
n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)

set = a_arr.to_set

if set.length == a_arr.length then
  puts "YES"
else
  puts "NO"
end

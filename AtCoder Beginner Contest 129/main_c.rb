n,m = gets.chomp.split(" ").map(&:to_i)

a_arr = []
m.times do |i|
  a_arr << gets.chomp.to_i
end
a_arr << n+1

fib = [1, 1]
100000.times do |i|
  fib[2+i] = fib[2+(i-1)] + fib[2+(i-2)]
end

arr = []
step = 0
prev = -1
a_arr.each do |a|
  if a - prev == 1 then
    puts 0
    exit
  end
  count = a - step - 1
  #puts count
  if count > 0 then
    arr << fib[count]
  end
  step = a + 1
  prev = a
end

result = 1
arr.each do |a|
  result *= a
  result = result % 1000000007
end

puts result

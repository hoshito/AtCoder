n,k = gets.chomp.split(" ").map(&:to_i)
a_arr = [0] + gets.chomp.split(" ").map(&:to_i)
tmp_arr = []
flag_arr = []

index = 1
count = 0
k.times do |i|
  index = a_arr[index]
  if flag_arr[index] == 1
    a_i = tmp_arr.index{|a| a == index}
    q = (k - a_i) % (count - a_i)
    if q == 0
      puts tmp_arr[-1]
    else
      puts tmp_arr[a_i + q - 1]
    end
    exit 0
  else
    flag_arr[index] = 1
    count += 1
    tmp_arr << index
  end
end

puts index

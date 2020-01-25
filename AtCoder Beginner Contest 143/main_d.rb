n = gets.chomp.to_i
l_arr = gets.chomp.split(" ").map(&:to_i).sort

count = 0
l_arr.each_with_index do |l, i|
  (0..i-1).each do |j|
    (j+1..i-1).each do |k|
      if l < l_arr[j] + l_arr[k] then
        count += 1
      else
        break
      end
    end
  end
end


puts count


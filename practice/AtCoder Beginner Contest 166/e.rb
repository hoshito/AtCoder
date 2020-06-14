n = gets.chomp.to_i
a_arr = gets.chomp.split.map(&:to_i)

hash = {}
hash2 = {}
a_arr.each_with_index do |a, i|
  if i + a < n
    hash[i + a] ||= []
    hash[i + a] << i
  end
  if i - a > 0
    hash2[i - a] ||= []
    hash2[i - a] << i
  end
end
count = 0
hash.each do |k, arr|
  count += arr.length * (hash2[k] || []).length
end
puts count

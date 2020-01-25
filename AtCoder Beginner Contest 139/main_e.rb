
n = gets.chomp.to_i

ht_hash = {}
th_hash = {}
(1..n).each do |i|
  gets.chomp.split(" ").map(&:to_i).each_cons(2) do |j1, j2|
    k =  i < j1 ? [i,j1] : [j1,i]
    v = i < j2 ? [i,j2] : [j2,i]
    ht_hash[k] ||= []
    ht_hash[k] << v

    th_hash[k] ||= 0
    th_hash[v] ||= 0
    th_hash[v] += 1
  end
end

puts ht_hash.inspect
puts th_hash.inspect

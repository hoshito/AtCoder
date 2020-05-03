require "set"
n,m,k = gets.chomp.split(" ").map(&:to_i)

ab_arr = m.times.map{gets.chomp.split(" ").map(&:to_i)}
cd_arr = k.times.map{gets.chomp.split(" ").map(&:to_i)}

f_hash = {}
ab_arr.each do |(a, b)|
  f_hash[a] ||= Set.new
  f_hash[a] << b
  f_hash[b] ||= Set.new
  f_hash[b] << a
end

b_hash = {}
cd_arr.each do |(c, d)|
  b_hash[c] ||= Set.new
  b_hash[c] << d
  b_hash[d] ||= Set.new
  b_hash[d] << c
end

result = []
n.times do
  result << 0
end

set = Set.new
(1..n).each do |i|
  next if set.include?(i)
  flags = Set.new
  counts = Set.new
  arr = f_hash[i]&.to_a || []
  while arr.length > 0 do
    f = arr.pop
    flags << f
    counts << f
    (f_hash[f]&.to_a || []).each do |ff|
      if !flags.include?(ff) then
        arr << ff
      end
    end
  end
  counts.each do |a|
    result[a-1] = counts.size - 1
  end
end

while ab_arr.length > 0 do
  a, b = ab_arr.pop

  tmp_arr = []

end

f_hash.each do |(a, b_set)|
  b_set.each do |b|

  end
end



puts result.join(" ")

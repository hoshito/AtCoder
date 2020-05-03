n = gets.chomp.to_i
k = gets.chomp.to_i

dig = n.to_s.length
count = 1
(1..k).each do |i|
  count = count * (9 - i + 1) * (dig - i) / i
end

n_first = n.to_s[0].to_i
(1..9).each do |a|
  if a < n_first then
    tmp_count = 1
    (1..k-1).each do |i|
      tmp_count = tmp_count * 9 * (dig - i) / i
    end
    puts tmp_count
    count += tmp_count
  elsif a > n_first then
    next
  elsif k == 1 then
    count += 1
  elsif k == 2 then
    (1..dig-1).each do |i1|
      x = a.to_s + ("0" * (dig-1))
      x[i1] = b.to_s
    end
  else
    (1..dig-2).each do |i1|
      (i1+1..dig-1).each do |i2|
        x = a.to_s + ("0" * (dig-1))
        x[i1] = b.to_s
        x[i2] = c.to_s
        count += 1 if x.to_i <= n
      end
    end
  end
end
puts count


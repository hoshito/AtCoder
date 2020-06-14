n,q = gets.chomp.split(" ").map(&:to_i)
s_arr = q.times.map{gets.chomp}

result = []
n.times do |i|
  result << "0" * n
end

s_arr.each do |s|
  type, a, b = s.split(" ").map(&:to_i)
  a -= 1
  b -= 1 unless b.nil?
  if type == 1 then
    result[a][b] = "1"
  elsif type == 2 then
    n.times do |i|
      result[a][i] = "1" if result[i][a] == "1"
    end
  else
    r = result[a]
    tmp = "" * n
    n.times do |i|
      next if r[i] == "0"
      result[a] ="%0#{n}d" % (result[a].to_i(2) | result[i].to_i(2)).to_s(2)
    end
  end
end

result.each_with_index do |r, i|
  puts r.split("").map.with_index{|x,j| x == "0" || i == j ? "N" : "Y"}.join("")
end

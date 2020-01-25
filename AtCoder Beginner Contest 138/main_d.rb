n,q = gets.chomp.split(" ").map(&:to_i)

# key: root, value: set(children)
hash = {}

arr = []
(n-1).times do |t|
  a,b = gets.chomp.split(" ").map(&:to_i)
  arr[a] ||= []
  arr[a] << b
end

i_xsum = {}
q.times do |t|
  q,x = gets.chomp.split(" ").map(&:to_i)
  i_xsum[q] ||= 0
  i_xsum[q] += x
end

result = []
(1..n).each do |i|
  xsum = i_xsum[i] || 0
  result << xsum
  (arr[i] || []).each do |a|
    i_xsum[a] ||= 0
    i_xsum[a] += xsum
  end
end

puts result.join(" ")


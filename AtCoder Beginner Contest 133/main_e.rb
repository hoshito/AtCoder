require "set"
n,k = gets.chomp.split(" ").map(&:to_i)
ab_arr = (n-1).times.map{gets.chomp.split(" ").map(&:to_i)}

if n == 1 then
  puts k
  exit 0
end

hash = {}
ab_arr.each do |(a, b)|
  hash[a] ||= []
  hash[a] << b
  hash[b] ||= []
  hash[b] << a
end

# cache
perm_hash = {}
perm = lambda {|i, j|
  return 1 if j == 0
  result = 1
  j.times do |t|
    result *= (i - t)
    result %= 1000000007
  end
  perm_hash[[i,j]] = result
  return result
}

count = k
set = Set.new

a,b = ab_arr[0]
set.add(a)
count *= perm.call(k-1, hash[a].length)

stack = hash[a]
while stack.length > 0 do
  c = stack.pop()
  set.add(c)
  children = hash[c].select{|cc|!set.include?(cc)}
  count *= perm_hash[[k-2, children.length]] || perm.call(k-2, children.length)
  count %= 1000000007
  children.each do |cc|
    stack.push(cc)
  end
end
puts count

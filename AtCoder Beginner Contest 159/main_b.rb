s = gets.chomp
n = s.length
0.upto(n/2-1) do |i|
  if s[i] != s[n-1-i]
    puts "No"
    exit
  end
end

sub_s1 = s[0..(n-1)/2-1]
n1 = sub_s1.length
0.upto(n1-1) do |i|
  if sub_s1[i] != sub_s1[n1-1-i]
    puts "No"
    exit
  end
end

sub_s2 = s[(n+3)/2-1..-1]
n2 = sub_s2.length
0.upto(n2-1) do |i|
  if sub_s2[i] != sub_s2[n2-1-i]
    puts "No"
    exit
  end
end

puts "Yes"

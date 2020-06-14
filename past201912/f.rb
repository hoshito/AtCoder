s = gets.chomp
len = s.length

result = []
word = ""
(0..len-1).each do |i|
  if s[i] == s[i].upcase && word.length > 0 then
    word += s[i]
    result << [word.downcase, word]
    word = ""
  else
    word += s[i]
  end
end

puts result.sort_by{|(a, b)| a}.map{|(a,b)| b}.join("")

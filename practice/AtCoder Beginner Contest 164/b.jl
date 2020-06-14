function main()
  a,b,c,d = parse.(Int,split(readline()))
  t_times = ceil(c / b)
  a_times = ceil(a / d)
  println(t_times <= a_times ? "Yes" : "No")
end
main()

function main()
  n,m = parse.(Int,split(readline()))
  ans = n - sum(parse.(Int,split(readline())))
  println(ans >= 0 ? ans : -1)
end
main()

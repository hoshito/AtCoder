function main()
  s,w = parse.(Int,split(readline()))
  println(w >= s ? "unsafe" : "safe")
end
main()

(()->begin
  k = readline() |> x->parse.(Int,x)
  a,b = readline() |> split |> x->parse.(Int,x)
  for i in a:b
    if i % k == 0
      println("OK")
      exit(0)
    end
  end
  println("NG")
end)()

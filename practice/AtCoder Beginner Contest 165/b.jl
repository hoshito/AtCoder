(()->begin
  x = readline() |> x->parse.(Int,x)
  m = 100
  for i in 1:99999999999
    m += floor(m * 0.01)
    if m >= x
      println(i)
      exit(0)
    end
  end
end)()

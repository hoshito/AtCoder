x = readline() |> x->parse.(Int,x)
(() -> begin
  for a in -120:120
    for b in -120:120
      if a^5 - b^5 == x
        println(join([a, b], " "))
        exit(0)
      end
    end
  end
end)()

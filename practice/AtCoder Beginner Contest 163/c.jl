(() -> begin
  n = parse.(Int,readline())
  arr = zeros(Int, n)
  for i in parse.(Int,split(readline()))
    arr[i] += 1
  end
  println.(arr)
end)()

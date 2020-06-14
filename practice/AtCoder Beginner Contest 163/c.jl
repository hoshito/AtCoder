function main()
  n = parse.(Int,readline())
  set = Set{String}(readlines())
  for i in 1:n
    push!(set, readline())
  end
  println(length(set))
end
main()

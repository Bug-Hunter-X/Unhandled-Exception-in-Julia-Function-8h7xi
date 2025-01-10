```julia
function my_function(x)
  if x > 0
    return x^2
  elseif x == 0
    return 0
  else
    error("Input must be non-negative")
  end
end

println(my_function(-1))
```
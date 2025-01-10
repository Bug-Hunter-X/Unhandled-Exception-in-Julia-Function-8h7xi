```julia
function my_function(x)
  if x >= 0
    return x^2
  else
    return -1  # Or some other suitable default value
  end
end

println(my_function(-1))

#Alternative with try-catch:
function my_function_trycatch(x)
  try
    return x^2
  catch e
    if isa(e, DomainError)
       return -1 # Handle the specific error
    else
       rethrow(e) #Re-throw other unexpected errors
    end
  end
end
println(my_function_trycatch(-1))
```
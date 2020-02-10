using Pkg, IJulia # Similar to using import in python, btw you can use python too

var1 = randn(10)

println("Hello, world!")

# REPL examples

println(5-3.8)  # println() treats numbers intelligently ... more or less

println(5+15-3.2, " ... evaluated!" )
             # one can mix numbers and strings in println()

println("Hello!" * " My word!")  # strings are combined using *

println("Hello!" * " My word!"^3) # strings are repeated using ^

# Strings are immutable in Julia

abstypevariable = Array(Integer, 2,3) # A two-dimensional array with 2 rows and 3 columns

abstypevariable[2,1]    #NB --- note the brackets, that's how to access elements of an array

abstypevariable[1,1] = 1    # Int64 is a subtype of Integer

abstypevariable # Note that abstypevariable is still abstract, even if it contains an element of definite type"

abstypevariable[1,2] = 5.0  # given value is of type Float64 although when defined it is type converted to Int64

arbconcretevariable = Array(Int64, 2,3)  # no actual value specified,
#                                             ... so Julia assigns arbitrary values

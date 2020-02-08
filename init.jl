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

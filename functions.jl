a, b, c = cos(0.2), log(10), abs(-1.22)  # multiple assignment to three separate variables

? cos # For help

methods(muladd) # All types accepted are listed using this

myfunc(firstvar) = 20*firstvar # One line function

myfunc(333.2222)       # then we just call it like any other function

addxtoy(x,y) = x + y   # not supposed to be useful! it just shows how the job is done

addxtoy(33, -22.2)     # mixed types: illustrates that for quick and dirty code, we can (mostly) ignore types

# Multi Line function definition
function nextfunc(a, b, c)  # this line names your function and specifies the inputs
    a*b + c                # here go your (usually quite a few) lines

    #  ... just illustrating the possiblity of using white space and additional comments
end

nextfunc(7,5,3)           # again, just call it like any other function

# To illustrate multi-line functions a bit more, here's a useful device for debugging: a line inside a function that gives you the value and the type of a variable.

# It relies on the escape character "$" in strings, which you recall DOESN'T create a dollar sign, but instead modifies how the string is built.

function showdebugprintln(testvar)
    println("inside the showdebubprint() now")   #this line announces where the report is coming from
    println("The type of testvar is $(typeof(testvar)) and the value of testvar is $testvar")
    #                  and this line reports what value, and hence what type, testvar actually has here
end

a = ['1',2.]
showdebugprintln(a)

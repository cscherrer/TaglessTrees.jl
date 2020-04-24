# TaglessTrees

[![Build Status](https://travis-ci.com/cscherrer/TaglessTrees.jl.svg?branch=master)](https://travis-ci.com/cscherrer/TaglessTrees.jl)
[![Codecov](https://codecov.io/gh/cscherrer/TaglessTrees.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/cscherrer/TaglessTrees.jl)

```julia
julia> using TaglessTrees

julia> add(args...) = call(+, args...)
add (generic function with 1 method)

julia> t = add(term(2), term(3))
#1 (generic function with 1 method)

julia> evaluate(t)
5

julia> trace(t)
term(2)
term(3)
call(+,...)
5
```

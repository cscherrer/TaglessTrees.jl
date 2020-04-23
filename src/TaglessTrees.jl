module TaglessTrees

struct TraverseWith{F,X}
    call :: F
    term :: X
end

(tw::TraverseWith)(tree) = tree(tw)

function call(f, args...)
    function(tw::TraverseWith) 
        tw.call(f, (arg(tw) for arg in args)...)
    end
end

function term(x)
    function(tw::TraverseWith)
        tw.term(x)
    end
end

evaluate = let
    call = function(f, args...)
        @show nameof(f)
        return f(args...)
    end

    term = function(x)
        @show x
        return x
    end

    TraverseWith(call, term)
end

# EXAMPLE

add(args...) = call(+, args...)


t = add(term(2), term(3))
evaluate(t)

evaluate(term(2))

end # module

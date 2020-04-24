module TaglessTrees


struct TraverseWith{F,X}
    call :: F
    term :: X
end

(tw::TraverseWith)(tree) = tree(tw)

export call

function call(f, args...)
    function(tw::TraverseWith) 
        tw.call(f, (arg(tw) for arg in args)...)
    end
end

export term

function term(x)
    function(tw::TraverseWith)
        tw.term(x)
    end
end

export evaluate

evaluate = let
    call = function(f, args...)
        return f(args...)
    end

    term = function(x)
        return x
    end

    TraverseWith(call, term)
end

export trace

trace = let
    call = function(f, args...)
        println("call(",nameof(f),",...)")
        return f(args...)
    end

    term = function(x)
        println("term(",x,")")
        return x
    end

    TraverseWith(call, term)
end

end # module

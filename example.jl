using TaglessTrees

add(args...) = call(+, args...)


t = add(term(2), term(3))
evaluate(t)
trace(t)

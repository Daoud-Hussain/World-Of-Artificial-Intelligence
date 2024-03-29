domains
    person = symbol.
    X = symbol.
predicates
    nondeterm parent(symbol, symbol).
    nondeterm get_grandparent.

clauses
    parent(albert, bob).
    parent(albert, betsy).
    parent(albert, bill).
    parent(alice, bob).
    parent(alice, betsy).
    parent(alice, bill).
    parent(bob, carl).
    parent(bob, charlie).

get_grandparent :-
    parent(X, carl),
    parent(X, charlie),
    write(X), write(" is the grandparent"), nl.
    

goal
    get_grandparent.

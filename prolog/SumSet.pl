sum([Result], Result).
sum([Item1,Item2|Tail], Result):- Head is Item1 + Item2, sum([Head|Tail], Result).

list2set([], Set, Set).
list2set([Head|Tail], Set, Result):- member(Head, Tail), list2set(Tail, Set, Result).
list2set([Head|Tail], Set, [Head|Result]):- list2set(Tail, Set, Result). 

:- initialization(main).

main:-
        read(List),
        list2set(List, [], Set),
	sum(Set, Result),
        write(Result),
        nl,
        halt(0).

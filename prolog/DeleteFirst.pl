delete_first([], _, []).
delete_first([Head|Tail], X, Result):- X == Head -> append([], Tail, Result); delete_first(Tail, X, List), append([Head], List, Result).

append([], List, List).
append([Head|Tail], List, [Head|Result]):- append(Tail, List, Result).

:- initialization(main).

main:-
        read(List),
	read(X),
        delete_first(List, X, Result),
        write(Result),
        nl,
        halt(0).

reverts([], []).
reverts([Head|Tail], Result):- reverts(Tail, List), append(List, [Head], Result).

append([], List, List).
append([Head|Tail], List, [Head|Result]):- append(Tail, List, Result).

:- initialization(main).

main:-
        read(List),
        reverts(List, Mirror),
        write(Mirror),
        nl,
        halt(0).

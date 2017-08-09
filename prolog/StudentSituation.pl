historical(joao, 5.0, 7.0, 8.0).
historical(maria, 6.0, 6.0, 6.0).
historical(joana, 8.0, 5.1, 10.0).
historical(mariana, 9.0, 9.0, 3.0).
historical(cleuza, 8.5, 7.0, 8.6).
historical(jose, 3.5, 3.0, 2.0).
historical(mary, 10.0, 8.0, 7.0).

situation(S, X):- historical(X, N1, N2, N3), M is (N1 + N2 + N3) / 3, M >= 7.0 -> S = aprovado; M >= 4.0, M < 7.0 -> S = final; S = reprovado.

:- initialization(main).

main:-
        read(X),
        situation(S, X),
        write(S),
        nl,
        halt(0).


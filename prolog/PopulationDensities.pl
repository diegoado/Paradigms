country(brasil, 200, 8).
country(eua, 320, 9).
country(canada, 35, 9).
country(india, 1200, 3).
country(china, 1300, 9).
country(japao, 127, 1).
country(russia, 142, 17).

densities_compare(P, P1, P2):- country(P1, A1, B1), country(P2, A2, B2), A1 / B1 >= A2 / B2 -> P = P1; P = P2.

:- initialization(main).

main:-
        read(P1),
	read(P2),
        densities_compare(P, P1, P2),
        write(P),
        nl,
        halt(0).

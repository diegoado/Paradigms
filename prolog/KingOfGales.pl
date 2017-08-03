king(rhodi, 844, 878).
king(anarawd, 878, 916).
king(hywel_dda, 916, 950).
king(lago_ap_idwal, 950, 979).
king(hywal_ap_Ieuaf, 979, 985).
king(cadwallon, 985, 986).
king(maredudd, 986, 999).

reinged(K, Y):- king(K, A, B), Y > A, Y =< B. 

:- initialization(main).

main:-
	read(X),
	reinged(Y, X),
	write(Y),
	nl,
	halt(0).

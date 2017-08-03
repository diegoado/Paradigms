bird(joao).
fish(pedro).
earthworm(maria).
cat(miau).

pessoa(eu).

gosta(X, Y):- bird(X), earthworm(Y).
gosta(X, Y):-  cat(X), bird(Y).
gosta(X, Y):-  cat(X), fish(Y).

amigo(X, Y):- gosta(X, Y), gosta(Y, X).
amigo(gato, eu).

come(X, Y) :- gosta(X, Y), \+ pessoa(Y).

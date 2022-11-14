% Prolog sum program
sum(0, []).
sum(S, [H|T]) :- sum(R, T), S is H+R.
seq(PLACEHOLDER1).
main :- seq(SEQ), sum(S, SEQ), write(S), nl, halt.
:- initialization(main).

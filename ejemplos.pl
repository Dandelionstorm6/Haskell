
%% Devolver true si esta en la lista
miembro(X,[X|T]):-!.
miembro(X,[_|T]):-miembro(X|T).



%% Largo de una lista 


largo([],0).
largo([H|T],N):- largo(T,N2), N is N2+1.




%% Buscar el enesimo elemento de una lista


geti(V,[],-100).
geti([V|T],1,V).
geti([_|T],N,V):-N2 is N-1, geti(T,N2,V).


%% contar cuantas veces

count(X,[],0).
count(X,[X|T],N):-count(X,T,N2),N is 1 + N2.
count(X,[_|T],N):-count(X,T,N2).
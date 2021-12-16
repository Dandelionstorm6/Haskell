

entrada(ensalada_pollo_,40).
entrada(ensalada_cesar,50).
entrada(ensalada_romana,80).


platillo(camaron_naranja,215).
platillo(pozole,110).
platillo(enchiladas_rojas,90).
platillo(corte_tbone,150).


postre(crepa,30).
postre(flan,25).
postre(pastel_zanahoria,30).

bebida(vino_tinto,150).
bebida(naranjada,35).
bebida(cerveza,40).
bebida(refresco,25).


comidaEconomica(E,P,X,B,Costo,Tope):-entrada(E,Pe),platillo(P,Pp),
                                    postre(X,Px),bebida(B,Pb),
                                    Costo is Pe + Pp + Px + Pb,
                                    Tope >= Costo, write(E),nl, write(P),nl,
                                    write(X),nl,write(B),nl,write(Costo),nl,fail.


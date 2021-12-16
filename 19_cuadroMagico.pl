num(1).
num(2).
num(3).
num(4).
num(5).               %%  A B C   2 7 6
num(6).               %%  D E F   9 5 1
num(7).               %%  G H I   4 3 8
num(8).
num(9).



nums(A,B,C,D,E,F,G,H,I):-
      num(A),num(B),num(C),              
      num(D),num(E),num(F),              
      num(G),num(H),num(I),
      A\==B,A\==C,A\==D,A\==E,A\==F,A\==G,A\==H,A\==I, 
            B\==C,B\==D,B\==E,B\==F,B\==G,B\==H,B\==I, 
                  C\==D,C\==E,C\==F,C\==G,C\==H,C\==I, 
                        D\==E,D\==F,D\==G,D\==H,D\==I, 
                              E\==F,E\==G,E\==H,E\==I, 
                                    F\==G,F\==H,F\==I, 
                                          G\==H,G\==I,
                                                H\==I.

cuadro(A,B,C,D,E,F,G,H,I):-
         nums(A,B,C,D,E,F,G,H,I),
         S1 is A + B + C,
         S2 is D + E + F,
         S3 is G + H + I, %%
         S4 is A + D + G,
         S5 is B + E + H,
         S6 is C + F + I,
         S7 is A + E + I,
         S8 is G + E + C,
         S1==S2,S2==S3,S3==S4,S4==S5,S5==S6,S6==S7,S7==S8.   
          
solucion([A,B,C,D,E,F,G,H,I]):-cuadro(A,B,C,D,E,F,G,H,I).
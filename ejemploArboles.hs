data Tree = Leaf Int | Branch Int Tree Tree

creaArbol :: Tree
creaArbol = Branch 5 (Branch 3 (Leaf 1) (Leaf 4)) (Leaf 10)


arbol2 :: Tree
arbol2 = Branch 6(Branch 3 (Leaf 1)(Leaf 4)) (Leaf 10)

generaLista (Leaf v) = [v]
generaLista (Branch v aizq ader) = (generaLista aizq) ++ [v] ++ (generaLista ader)

cuenta (Leaf v) = 1
cuenta (Branch v aizq ader) = 1 + (cuenta aizq) + (cuenta ader)

suma (Leaf v) = v
suma (Branch v aizq ader)= v + (suma aizq) + (suma ader)

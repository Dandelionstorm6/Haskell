maxi [] = 0
maxi (x:xs) = maximo xs x

maximo [] x = x
maximo (x:xs) n = if (x > n ) then maximo xs x 
                            else maximo xs n 

mini [] = 0
mini (x:xs) = minimo xs x
minimo [] x= x
minimo (x:xs) n = if (x < n ) then minimo xs x
                            else minimo xs n

eli [] a b = [] 
eli (x:xs) a b = if ( x == a || x== b ) then (eli xs a b)
                                        else x: (eli xs a b)

elimina l = let
			a = maxi l
			b = mini l
		in
       		eli l a b 
--borrar el enesimo  elemento de la lista 


borrar [] n = [] --se acabaron  los elementos de la lista
--ya no se pueden  sacar más y se devuelve la lista 

borrar (x:xs) 0 = xs 

borrar (x:xs) n = x : (borrar xs (n-1)) --se conserva la x 
-- y de cola ponemos la lista y decrementamos n 
--cuando n  llegue a 0 devuelve  xs y elimina automaticamente  x que
--que es la cabeza 

-- Con condicionales 
borra [] n = [] --se acabaron  los elementos de la lista
--ya no se pueden  sacar más y se devuelve la lista 

borra (x:xs) n = if(n==0) then xs
				else x:(borra xs (n-1))





borr [] = [] --se acabaron  los elementos de la lista
--ya no se pueden  sacar más y se devuelve la lista 

borr (x:xs)= if((odd x) == False) then x:borr xs
					else borr xs 







may (x:xs) = if(x>sig) then x 
					else may xs
sig (x:xs) = x






	
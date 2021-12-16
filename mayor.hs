--mayor




mayor [] = -1
mayor (x:xs) = if(x> (m xs)) then x 
								else mayor xs 



may [] = -1
may (x:xs) = m xs x

m [] n = n
m (x:xs) n = if(x>n) then m xs x
					else m xs n

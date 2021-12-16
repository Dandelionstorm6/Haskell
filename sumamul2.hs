mul [] n = 0
mul (x:xs) n = sumi (x:xs) n 1


sumi [] n y = 0
sumi (x:xs) n y = if( ( (mod y n) == 0) ) then x + (sumi xs n (y+1))
								else  (sumi xs n (y+1))
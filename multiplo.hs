



mul [] n = 0
mul (x:xs) n = sumi (x:xs) n 0


sumi [] n y = 0
sumi (x:xs) n y = if (y==0) then (sumi xs n (y+1))
								
					else if( ( (mod y n) == 0) ) then x + (sumi xs n (y+1))
								else  (sumi xs n (y+1))
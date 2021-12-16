
sumi [] = 0
sumi (x:xs) = if((odd x) == True) then x + (sumi xs)
				else sumi xs



sumi [] n = 0
sumi (x:xs) n = if(n  == True) then  x + (sumi xs (not n))
				else (sumi xs n)
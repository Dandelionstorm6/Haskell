
sumapos [] = -1
sumapos (x:xs) = (sumi (x:xs) True)

sumi [] n = 0
sumi (x:xs) n = if(n) then  x + (sumi xs False)
				else (sumi xs True)







sum [] =0
sum (x:xs) = sumi2 (x:xs) 0
 

sumi2 [] n = 0
sumi2 (x:xs) n = if(mod n 2 ==  0) then x + (sumi2 xs (n+1))
						else ( sumi2 xs (n+1)  )




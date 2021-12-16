--Ejercicio Potencia 


potencia :: Int->Int->Int
potencia b e = if(e==0) then 1
				else b*(potencia (b e-1))
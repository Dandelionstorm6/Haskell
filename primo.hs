


primo x = if( (testearDivisibilidad x) > 2 ) then 0
											else 1
primos 1 = 0
primos x = if( (primo x)==1 ) then 1 + primos (x-1)
			else 0 + primos (x-1)

testearDivisibilidad x = cuantasdivisible x  x

cuantasdivisible x 1 = 1
cuantasdivisible x c = if ((mod x c) == 0) then 1 + cuantasdivisible x (c-1)
							else 0 + cuantasdivisible x (c-1)




							












primo x = if( (testearDivisibilidad x ) > 2 ) then 0
											else 1
primos 1 = -1
primos x = if( (primo x)==1 ) then 1 + primos (x-1)
			else 0 + primos (x-1)

testearDivisibilidad x = cuantasdivisible x 4

cuantasdivisible 1 4 = 1
cuantasdivisible x c = if ((mod x c) == 0) then 1 + cuantasdivisible (x-1) c
							else 0 + cuantasdivisible (x-1) c
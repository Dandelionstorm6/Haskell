





prom [] = 0
prom (x:xs) = sumi (x:xs) 0  0 

sumi [] n c = c/n
sumi (x:xs) n c= (sumi (xs) (n+1) (x+c) )
import Data.Char
--Usé WinHugs
query = ["Tienes refrescos coca cola coa"]
frases = [    "Hay en existencía, dé  leche para tomar?",
                     "Venden refrescos de cóla y, con gas?",
                     "Tienen Jugos náturales embotellados?" ,
                     "Chat bot de prolog casi finalizado"  ]
 
respuestas = [     "Los lacteos son nutritivos",
                              "Las gaseosas hacen mal",
                              "la fruta es mejor",
                              "podrias haberlo hecho mejor"   ]

quitaAcento c
	|	(ord c) == 225 = 'a'
	|	(ord c) == 233 = 'e'
	|	(ord c) == 237 = 'i'
	|	(ord c) == 243 = 'o'
	|	(ord c) == 250 = 'u'
	|	otherwise = c	

quitaSim frase = [c | c<-frase, not (isPunctuation c) ]

stop = ["a", "aca","ahi","al","algo","algun","alguna","alguno","algunos","algunas","alla","ahi","ambos","ante","antes","aquel","aquella","aquello","aquello","aquellos","aquellas","aqui","arriba","asi","atras","aun","aunque","bien","cada","casi","como","con","cual","cuales","cualquier","cualquiera","cualquieras","cuan","cuando","cuanto","cuanta","cuantas","cuentos","de","del","demas","desde","donde","dos","el","ella","ellas","ello","ellos","en","eres","esa","ese","eso","esos","esta","estas","este","esto","estos","etc","ha","he","hay","hasta","la","las","lo","los","me","mi","mis","mia","mias","mientras","muy","ni","nosotras","nosotros","nuestra","nuestro","nuestras","nuestros","os","otra","otro","otros","otras","para","pero","pues","que","si","siempre","siendo","sin","sino","so","sobre","sr","sra","sres","sta","su","sus","te","tu","tus","tienen","tienes","un","una","uno","unas","unos","usted","ustedes","vosotras","vosotros","vuestra","vuestro","vuestras","vuestros","venden","y","ya","yo"]

quitam fs = let 
				quita = [(map toLower f) |f<-fs]
				quitaa = [ (map quitaAcento f) |f<-quita]
				quitaaa = [ quitaSim f |f<-quitaa]
				quitaaaa =  map words quitaaa
				quitaaaaa = [ [ s | s<-(w),(s `elem` stop) == False ]  | w<- quitaaaa]
			in 
				quitaaaaa

diccionario = verifica ( concat ( (quitam  frases) ++ (quitam query) ) )

--Elimina las palabras repetidas
contiene :: (Eq a) => [a] -> a -> Bool
contiene [] _ = False
contiene (x:xs) a
	| x == a    = True
	| otherwise = contiene xs a

verifica :: (Eq a) => [a] -> [a]
verifica [] = []
verifica (x:xs)
	| contiene xs x  = verifica xs
	| otherwise = x : verifica xs


inicio = [ 0 | x<-[1..(length diccionario)] ]
tam= length diccionario


vector [] b _ = []
vector (x:xs) a (y:ys)= if ( ( (diccionario !! a) `elem`  (y:ys)  ) ) then (contiene2 (concat (quitam query)) (diccionario !! a)):vector xs (a+1) (y:ys)
																	else x:vector xs (a+1) (y:ys)

contiene2 :: (Eq a) => [a] -> a -> Integer
contiene2 [] _ = 0
contiene2 (x:xs) a
	| x == a    = 1+ contiene2 xs a
	| otherwise = contiene2 xs a

vectorf l =  [ vector inicio 0 y  | y<-l]

similitud (-1) a b= 0
similitud n a b =  ( ( a !! n ) * (  b !! n ) ) + similitud (n-1) a b

--devuelve los cuadrados de query
llama = similitud (tam-1) (concat( vectorf (quitam query))) (concat((vectorf (quitam query)) ))

--devuelve las similitudes de query y frase
similitudes s = [ similitud (tam-1) (concat( vectorf (quitam query))) si | si<-s]

--devolver los cuadrados de frase
similitudf f = [ similitud (tam-1) si si | si<-f]

similitudfr = similitudf (vectorf (quitam frases))


--fr es similitudfr, este es el denominador del coseno
arreglo fr = [ sqrt (fromIntegral (llama*d)) | d<-fr]
arreglos = arreglo similitudfr

simfinal (-1) i= []
simfinal n i= if (fromIntegral( ( (similitudes (vectorf (quitam frases))) ) !! i) == 0 ) then 0:simfinal (n-1) (i+1)
					else fromIntegral( ( (similitudes (vectorf (quitam frases))) ) !! i) / (arreglos !! i) :simfinal (n-1) (i+1)
final = simfinal (length arreglos-1) 0


may [] = -1
may (x:xs) = m xs x

m [] n = n
m (x:xs) n = if(x>n) then m xs x
					else m xs n

indi [] = 0
indi (x:xs) = if(x == (may final) ) then 0 + (indi [])
							else 1+ (indi xs)
--linea final 
respuesta = respuestas !! (indi final)
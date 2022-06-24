-- I1M 2018-19: Rel_1_sol.hs (28 de septiembre de 2018)
-- Definiciones por composición sobre números, listas y booleanos. 
-- Departamento de Ciencias de la Computación e I.A.
-- Universidad de Sevilla
-- =====================================================================

-- ---------------------------------------------------------------------
-- Introducción                                                       --
-- ---------------------------------------------------------------------

-- En esta relación se plantean ejercicios con definiciones de funciones 
-- por composición sobre números, listas y booleanos.
-- 
-- Para solucionar los ejercicios puede ser útil el manual de
-- funciones de Haskell que se encuentra en http://bit.ly/1uJZiqi y su
-- resumen en http://bit.ly/ZwSMHO

import Test.HUnit

-- ---------------------------------------------------------------------
-- Ejercicio 1. Definir la función media3 tal que (media3 x y z) es
-- la media aritmética de los números x, y y z. Por ejemplo, 
--    media3 1 3 8     ==  4.0
--    media3 (-1) 0 7  ==  2.0
--    media3 (-3) 0 3  ==  0.0
-- ---------------------------------------------------------------------

media3 x y z = (x+y+z)/3

-- ---------------------------------------------------------------------
-- Ejercicio 2. Definir la función sumaMonedas tal que 
-- (sumaMonedas a b c d e) es la suma de los euros correspondientes a 
-- a monedas de 1 euro, b de 2 euros, c de 5 euros, d 10 euros y
-- e de 20 euros. Por ejemplo,
--    sumaMonedas 0 0 0 0 1  ==  20
--    sumaMonedas 0 0 8 0 3  == 100
--    sumaMonedas 1 1 1 1 1  ==  38
-- ---------------------------------------------------------------------

sumaMonedas a b c d e = 1*a+2*b+5*c+10*d+20*e

-- ---------------------------------------------------------------------
-- Ejercicio 3. Definir la función volumenEsfera tal que 
-- (volumenEsfera r) es el volumen de la esfera de radio r. Por ejemplo,
--    volumenEsfera 10  ==  4188.790204786391
-- Indicación: Usar la constante pi.
-- ---------------------------------------------------------------------

volumenEsfera r = (4/3)*pi*r**3

-- ---------------------------------------------------------------------
-- Ejercicio 4. Definir la función areaDeCoronaCircular tal que 
-- (areaDeCoronaCircular r1 r2) es el área de una corona circular de
-- radio interior r1 y radio exterior r2. Por ejemplo,
--    areaDeCoronaCircular 1 2 == 9.42477796076938
--    areaDeCoronaCircular 2 5 == 65.97344572538566
--    areaDeCoronaCircular 3 5 == 50.26548245743669
-- ---------------------------------------------------------------------

areaDeCoronaCircular r1 r2 = pi*(r2**2 -r1**2) 

-- ---------------------------------------------------------------------
-- Ejercicio 5. Definir la función ultimaCifra tal que (ultimaCifra x)
-- es la última cifra del número x. Por ejemplo,
--    ultimaCifra 325  ==  5
-- Indicación: Usar la función rem
-- ---------------------------------------------------------------------

ultimaCifra x = rem x 10

-- ---------------------------------------------------------------------
-- Ejercicio 6. Definir la función maxTres tal que (maxTres x y z) es
-- el máximo de x, y y z. Por ejemplo,
--    maxTres 6 2 4  ==  6
--    maxTres 6 7 4  ==  7
--    maxTres 6 7 9  ==  9
-- Indicación: Usar la función max.
-- ---------------------------------------------------------------------

maxTres x y z = max x (max y z)

-- ---------------------------------------------------------------------
-- Ejercicio 7. Definir la función rota1 tal que (rota1 xs) es la lista
-- obtenida poniendo el primer elemento de xs al final de la lista. Por
-- ejemplo, 
--    rota1 [3,2,5,7]  ==  [2,5,7,3]
-- ---------------------------------------------------------------------

rota1 xs = tail xs ++ [head xs]

-- ---------------------------------------------------------------------
-- Ejercicio 8. Definir la función rota tal que (rota n xs) es la lista
-- obtenida poniendo los n primeros elementos de xs al final de la
-- lista. Por ejemplo, 
--    rota 1 [3,2,5,7]  ==  [2,5,7,3]
--    rota 2 [3,2,5,7]  ==  [5,7,3,2]
--    rota 3 [3,2,5,7]  ==  [7,3,2,5]
-- ---------------------------------------------------------------------

rota n xs = drop n xs ++ take n xs 

-- ---------------------------------------------------------------------
-- Ejercicio 9. Definir la función rango tal que (rango xs) es la
-- lista formada por el menor y mayor elemento de xs.
--    rango [3,2,7,5]  ==  [2,7]
-- Indicación: Se pueden usar minimum y maximum.
-- ---------------------------------------------------------------------

rango xs = [minimum xs, maximum xs]

-- ---------------------------------------------------------------------
-- Ejercicio 10. Definir la función palindromo tal que (palindromo xs) se
-- verifica si xs es un palíndromo; es decir, es lo mismo leer xs de
-- izquierda a derecha que de derecha a izquierda. Por ejemplo,
--    palindromo [3,2,5,2,3]    ==  True
--    palindromo [3,2,5,6,2,3]  ==  False
-- ---------------------------------------------------------------------

palindromo xs = xs == reverse xs

-- ---------------------------------------------------------------------
-- Ejercicio 11. Definir la función interior tal que (interior xs) es la
-- lista obtenida eliminando los extremos de la lista xs. Por ejemplo,
--    interior [2,5,3,7,3]  ==  [5,3,7]
--    interior [2..7]       ==  [3,4,5,6]
-- ---------------------------------------------------------------------

interior xs = tail (init xs)

-- ---------------------------------------------------------------------
-- Ejercicio 12. Definir la función finales tal que (finales n xs) es la
-- lista formada por los n finales elementos de xs. Por ejemplo,
--    finales 3 [2,5,4,7,9,6]  ==  [7,9,6]
-- ---------------------------------------------------------------------

finales n xs = drop (length xs - n) xs 
 
-- ---------------------------------------------------------------------
-- Ejercicio 13. Definir la función segmento tal que (segmento m n xs) es
-- la lista de los elementos de xs comprendidos entre las posiciones m y
-- n. Por ejemplo,
--    segmento 3 4 [3,4,1,2,7,9,0]  ==  [1,2]
--    segmento 3 5 [3,4,1,2,7,9,0]  ==  [1,2,7]
--    segmento 5 3 [3,4,1,2,7,9,0]  ==  []
-- ---------------------------------------------------------------------

segmento m n xs = drop (m-1) (take n xs)
 
-- ---------------------------------------------------------------------
-- Ejercicio 14. Definir la función extremos tal que (extremos n xs) es
-- la lista formada por los n primeros elementos de xs y los n finales
-- elementos de xs. Por ejemplo, 
--    extremos 3 [2,6,7,1,2,4,5,8,9,2,3]  ==  [2,6,7,9,2,3]
-- ---------------------------------------------------------------------

extremos n xs = take n xs ++ drop (length xs - n) xs

-- ---------------------------------------------------------------------
-- Ejercicio 15. Definir la función mediano tal que (mediano x y z) es el
-- número mediano de los tres números x, y y z. Por ejemplo,
--    mediano 3 2 5  ==  3
--    mediano 2 4 5  ==  4
--    mediano 2 6 5  ==  5
--    mediano 2 6 6  ==  6
-- Indicación: Usar maximum y minimum.
-- ---------------------------------------------------------------------

mediano x y z = x + y + z- minimum [x,y,z] - maximum [x,y,z]

-- ---------------------------------------------------------------------
-- Ejercicio 16. Definir la función tresIguales tal que 
-- (tresIguales x y z) se verifica si los elementos x, y y z son
-- iguales. Por ejemplo, 
--    tresIguales 4 4 4  ==  True
--    tresIguales 4 3 4  ==  False
-- ---------------------------------------------------------------------

tresIguales x y z = x == y && y == z

-- ---------------------------------------------------------------------
-- Ejercicio 17. Definir la función tresDiferentes tal que 
-- (tresDiferentes x y z) se verifica si los elementos x, y y z son
-- distintos. Por ejemplo, 
--    tresDiferentes 3 5 2  ==  True
--    tresDiferentes 3 5 3  ==  False
-- ---------------------------------------------------------------------

tresDiferentes x y z = x /= y && x /= z && y /= z

-- ---------------------------------------------------------------------
-- Ejercicio 18. Definir la función cuatroIguales tal que 
-- (cuatroIguales x y z u) se verifica si los elementos x, y, z y u son
-- iguales. Por ejemplo, 
--    cuatroIguales 5 5 5 5   ==  True
--    cuatroIguales 5 5 4 5   ==  False
-- Indicación: Usar la función tresIguales.
-- ---------------------------------------------------------------------

cuatroIguales x y z u = x == y && tresIguales y z u

-- ---------------------------------------------------------------------
-- § Verificación                                                     --
-- ---------------------------------------------------------------------

ejemplos :: [Test]
ejemplos = 
    [ "media3_e1" ~: 
      media3 1 3 8     ~?= 4
    , "media3_e2" ~: 
      media3 (-1) 0 7  ~?= 2
    , "media3_e3" ~: 
      media3 (-3) 0 3  ~?= 0

    , "sumaMonedas_e1" ~: 
      sumaMonedas 0 0 0 0 1  ~?=  20
    , "sumaMonedas_e2" ~: 
      sumaMonedas 0 0 8 0 3  ~?= 100
    , "sumaMonedas_e3" ~: 
      sumaMonedas 1 1 1 1 1  ~?=  38
    
    , "volumenEsfera_e1" ~:
      volumenEsfera 10  ~?=  4188.790204786391
    
    , "areaDeCoronaCircular_e1" ~:
      areaDeCoronaCircular 1 2 ~?= 9.42477796076938
    , "areaDeCoronaCircular_e1" ~:
      areaDeCoronaCircular 2 5 ~?= 65.97344572538566
    , "areaDeCoronaCircular_e1" ~:
      areaDeCoronaCircular 3 5 ~?= 50.26548245743669
    
    , "ultimaCifra_e1" ~:
      ultimaCifra 325  ~?=  5
    
    , "maxTres_e1" ~:
      maxTres 6 2 4  ~?=  6
    , "maxTres_e2" ~:
      maxTres 6 7 4  ~?=  7
    , "maxTres_e3" ~:
      maxTres 6 7 9  ~?=  9
  
    , "rota1_e1" ~:
      rota1 [3,2,5,7]  ~?=  [2,5,7,3]

    , "rota_e1" ~:
      rota 1 [3,2,5,7]  ~?=  [2,5,7,3]
    , "rota_e2" ~:
      rota 2 [3,2,5,7]  ~?=  [5,7,3,2]
    , "rota_e3" ~:
      rota 3 [3,2,5,7]  ~?=  [7,3,2,5]

    , "rango_e1" ~:
      rango [3,2,7,5]  ~?=  [2,7]

    , "palindromo_e1" ~:
      palindromo [3,2,5,2,3]    ~?=  True
    , "palindromo_e2" ~:
      palindromo [3,2,5,6,2,3]  ~?=  False
      
    , "interior_e1" ~:
      interior [2,5,3,7,3]  ~?=  [5,3,7]
    , "interior_e2" ~:
      interior [2..7]       ~?=  [3,4,5,6]
      
    , "finales_e1" ~:
      finales 3 [2,5,4,7,9,6]  ~?=  [7,9,6]

    , "segmento_e1" ~:
      segmento 3 4 [3,4,1,2,7,9,0]  ~?=  [1,2]
    , "segmento_e2" ~:
      segmento 3 5 [3,4,1,2,7,9,0]  ~?=  [1,2,7]
    , "segmento_e3" ~:
      segmento 5 3 [3,4,1,2,7,9,0]  ~?=  []
    
    , "extremos_e1" ~:
      extremos 3 [2,6,7,1,2,4,5,8,9,2,3]  ~?=  [2,6,7,9,2,3]

    , "mediano_e1" ~:
      mediano 3 2 5  ~?=  3
    , "mediano_e2" ~:
      mediano 2 4 5  ~?=  4
    , "mediano_e3" ~:
      mediano 2 6 5  ~?=  5
    , "mediano_e4" ~:
      mediano 2 6 6  ~?=  6

    , "tresIguales_e1" ~:
      tresIguales 4 4 4  ~?=  True
    , "tresIguales_e2" ~:
      tresIguales 4 3 4  ~?=  False
  
    , "tresDiferentes_e1" ~:
      tresDiferentes 3 5 2  ~?=  True
    , "tresDiferentes_e2" ~:
      tresDiferentes 3 5 3  ~?=  False
    , "tresDiferentes_e3" ~:
      tresDiferentes 3 5 5  ~?=  False

    , "cuatroIguales_e1" ~:
      cuatroIguales 5 5 5 5   ~?=  True
    , "cuatroIguales_e2" ~:
      cuatroIguales 5 5 4 5   ~?=  False
    ]

verificacion :: IO Counts
verificacion = runTestTT (test ejemplos)

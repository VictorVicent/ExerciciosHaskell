{-
3.12) Faça uma função chamada binList , usando list compreeshion, que recebe uma lista de Binarios (ver exercício anterior) e retorna outra lista 
com elemento somado Um e convertido para Int . Exemplo: binList [Um, Zero, Zero, Um, Zero] = [0,1,1,0,1]
-}


data Binario = Zero | Um deriving Show
data Funcao = Soma2 | Maior | Menor | Mult2

aplicar :: Funcao -> Binario -> Binario -> Binario

aplicar Soma2 Um Um = Zero
aplicar Soma2 Um Zero = Um
aplicar Soma2 Zero Um = Um
aplicar Soma2 Zero Zero = Zero
    
aplicar Maior Um Um = Um
aplicar Maior Um Zero = Um
aplicar Maior Zero Um = Um
aplicar Maior Zero Zero = Zero

aplicar Menor Um Um = Um
aplicar Menor Um Zero = Zero
aplicar Menor Zero Um = Zero
aplicar Menor Zero Zero = Zero

aplicar Mult2 Um Um = Um
aplicar Mult2 Um Zero = Zero
aplicar Mult2 Zero Um = Zero
aplicar Mult2 Zero Zero = Zero

converteBinario :: Binario -> Int
converteBinario Um = 1
converteBinario Zero = 0

binList :: [Binario] -> [Int]
binList bx = [ converteBinario (aplicar Soma2 by Um) | by <- bx]
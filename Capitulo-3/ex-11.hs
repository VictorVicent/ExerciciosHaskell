{-
3.11) Crie o tipo de dado Binario que pode ser Zero ou Um . Faça outro tipo de dado chamado Funcao que pode ser Soma2 , Maior , Menor ou Mult2 . 
Implemente a função aplicar que recebe uma Funcao e dois Binarios . Seu retorno consiste em executar a operação desejada. 
Exemplo: aplicar Soma2 Um Um = Zero
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
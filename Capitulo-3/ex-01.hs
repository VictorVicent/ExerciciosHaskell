{-
3.1) Crie o tipo Pergunta com os values constructors Sim ou Nao . Faça as funções seguintes, determinando seus tipos explicitamente. 
pergNum : recebe via parâmetro uma Pergunta . Retorna 0 para Nao e 1 para Sim . 
listPergs : recebe via parâmetro uma lista de Perguntas , e retorna 0 s e 1 s correspondentes aos constructores contidos na lista. 
and' : recebe duas Perguntas como parâmetro e retorna a tabela verdade do and lógico, usando Sim como verdadeiro e Nao como falso. 
or' : idem ao anterior, porém deve ser usado o ou lógico. 
not' : idem aos anteriores, porém usando o not lógico
-}

data Pergunta = Sim | Nao 

pergNum :: Pergunta -> Int
pergNum Sim = 1
pergNum Nao = 0

listPergs :: [Pergunta] -> [Int]
listPergs prgs = [ pergNum x | x <- prgs ]

and' :: Pergunta -> Pergunta -> Int
and' Sim Sim = 1
and' Sim Nao = 0
and' Nao Sim = 0
and' Nao Nao = 0

or' :: Pergunta -> Pergunta -> Int
or' Sim Sim = 1
or' Sim Nao = 1
or' Nao Sim = 1
or' Nao Nao = 0

not' :: Pergunta -> Pergunta -> Int
not' Sim Sim = 0
not' Sim Nao = 1
not' Nao Sim = 1
not' Nao Nao = 1
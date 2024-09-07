{-
3.7)Faça uma função que	receba uma String e retorne
 True se esta for um palíndromo; caso contrário, False	
-}

palindromo :: String -> Bool
palindromo x = x == reverse x
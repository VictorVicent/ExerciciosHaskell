{-
2.1)Gere as listas:
a) [1,11,121,1331,14641,161051,1771561]
b) [1,2,3,5,6,7,9,10,11,13,14,15,17,18,19,21,22,23,25,26,27,29,30,31,33,34,35,37,38,39]
c) ["AaBB",	 "AbBB",	 "AcBB",	 "AdBB",	 "AeBB",	 "AfBB", "AgBB"]
d) [5,8,11,17,20,26,29,32,38,41]
e) [1.0,0.5,0.25,0.125,0.0625,0.03125]
f) [1,10,19,28,37,46,55,64]
g) [2,4,8,10,12,16,18,22,24,28,30]
h) ['@','A','C','D','E','G','J','L']
-}

a)
listaA :: [Int]
listaA = [11^x | x<-[0..6]]

b)
listaB ::[Int] 
listaB = [x | x<-[0..40], x `mod` 4 /= 0]

c)
listaC ::[String]
listaC = ["A" ++ [x] ++ "BB" | x <-['a'..'g']] 

d)
listaD :: [Int]
listaD = [x | x <- [5,8..41], x /= 14, x/=23, x/= 35]

e)
listaE :: [Float]
listaE = [ 1 / 2 ^ x | x <- [0..5]]

f)
listaF :: [Int]
listaF = [x | x <- [1..64], mod x 9 == 1]

g)
listaG :: [Int]
listaG = [x | x <- [1..30], mod x 2 == 0, x /=6,x /= 14, x /= 26]

h)
listaH :: [String]
listaH = [[x] | x <- ['@','A'..'L'], x /= 'B', x /= 'F', x /= 'H', x /= 'I']



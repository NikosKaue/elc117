--1) Escreva uma função hasEqHeads :: [Int] -> [Int] -> Bool que verifica se as 2 listas possuem o mesmo primeiro elemento. 

hasEqHeads :: [Int] -> [Int] ->Bool
hasEqHeads x y = if head x == head y then True else False

--2)  Observe a função abaixo, que eleva ao cubo cada elemento da lista, produzindo outra lista.

pot3 :: [Int] -> [Int]
pot3 [] = []
pot3 ns = (head ns)^3 : pot3 (tail ns)

--3) Escreva uma função recursiva add10, que adicione a constante 10 a cada elemento de uma lista, produzindo outra lista.

add10 :: [Int] -> [Int]
add10 x = map (+10) x

--4)Escreva uma função recursiva addComma, que adicione uma vírgula no final de cada string contida numa lista. Dica: (1) Strings são listas de caracteres. (2) Para concatenar listas, use o operador ++.

addComma :: [String] -> [String]
addComma [] = [] 
addComma x =((head x) ++ ",") : addComma (tail x)
  
--5) Refaça os 2 exercícios anteriores usando a função de alta ordem 'map'.

--3 foi feitaa ja com map
--4)refeito c/ map
add :: [String] -> [String]
add [] = [] 
add x = map (++ ",") x


--6)






-- FUNÇÕES DE ALTA ORDEM

--1) Dada uma lista de números, calcular 2*n+1 para cada número n contido na lista.

lis :: [Int] -> [Int]
lis [] = []
lis x = map (\x -> 2*x+1) x

--2) Dadas duas listas X e Y de números inteiros, calcular 4*x+2*y+1 para cada par de números x e y pertencentes às listas. 

func :: [Int] -> [Int] -> [Int]
func [] [] = []
func x y = zipWith (\x y -> 4*x+2*y+1) x y


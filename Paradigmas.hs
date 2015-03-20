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
  
add :: [String] -> [String]
add [] = [] 
add x = map (++ ",") x

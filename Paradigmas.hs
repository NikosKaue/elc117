--Exercícios Práticos: Programação funcional com Haskell
--Nome: Nikollas Kauê Soares Gomes
--Matrícula: 201020867

--1) Escreva uma função hasEqHeads :: [Int] -> [Int] -> Bool que verifica se as 2 listas possuem
-- o mesmo primeiro elemento. 

hasEqHeads :: [Int] -> [Int] ->Bool
hasEqHeads x y = if head x == head y then True else False

--2)  Observe a função abaixo, que eleva ao cubo cada elemento da lista, produzindo outra lista.

pot3 :: [Int] -> [Int]
pot3 [] = []
pot3 ns = (head ns)^3 : pot3 (tail ns)

--3) Escreva uma função recursiva add10, que adicione a constante 10 a cada elemento de uma lista,
--produzindo outra lista.

add10 :: [Int] -> [Int]
add10 x = map (+10) x

--4)Escreva uma função recursiva addComma, que adicione uma vírgula no final de cada string contida
-- numa lista. Dica: (1) Strings são listas de caracteres. (2) Para concatenar listas, use o operador ++.

addComma :: [String] -> [String]
addComma [] = [] 
addComma x =((head x) ++ ",") : addComma (tail x)
  
--5) Refaça os 2 exercícios anteriores usando a função de alta ordem 'map'.

--                                     3) foi feita ja com map

--                                       4)refeito c/ map
add :: [String] -> [String]
add [] = [] 
add x = map (++ ",") x


--6)Crie uma função htmlListItems :: [String] -> [String], que receba uma lista de strings e retorne outra lista contendo as strings formatadas 
--como itens de lista em HTML.Dica: use map e defina uma função auxiliar a ser aplicada a cada elemento. 

--7) Crie uma função recursiva charFound :: Char -> String -> Bool, que verifique se o caracter (primeiro argumento) 
--está contido na string (segundo argumento).

--8) Reescreva a função anterior sem recursão, usando outras funções pré-definidas já vistas em aula.

--9) Use a função de alta ordem 'zipWith' para produzir uma função que obtenha as diferenças, par 
--a par, dos elementos de duas listas. Por exemplo: para listas de entrada [1,2,3,4] e [2,2,1,1],
-- o resultado será [-1,0,2,3].





-- FUNÇÕES DE ALTA ORDEM

--1) Dada uma lista de números, calcular 2*n+1 para cada número n contido na lista.

lis :: [Int] -> [Int]
lis [] = []
lis x = map (\x -> 2*x+1) x

--2) Dadas duas listas X e Y de números inteiros, calcular 4*x+2*y+1 para cada par de números x e y pertencentes às listas. 

func :: [Int] -> [Int] -> [Int]
func [] [] = []
func x y = zipWith (\x y -> 4*x+2*y+1) x y

--3) Dada uma lista de strings, produzir outra lista com strings de 10 caracteres, usando o seguinte esquema: strings de entrada com mais de 10 caracteres são truncadas, strings com até 10 caracteres são completadas com '.' até ficarem com 10 caracteres

exe32 :: [String] -> [String]
exe32 [] = []
exe32 (a:b) = take 10 (a ++ (repeat '.')) : exe32 b

--4) Dada uma lista de idades, selecionar as que são maiores que 20 e, para cada uma, calcular o ano de nascimento correspondente (aproximado, considerando o ano atual).
caliD :: [Int] -> [Int]
caliD [] = []
caliD n = map(\n -> 2015 - n) (filter(>20)n)



--Exercícios Práticos: Programação funcional com Haskell
--Nome: Nikollas Kauê Soares Gomes
--Matrícula: 201020867

-- EXECUÇÃO

--1) Copie as funções abaixo para um arquivo de programa Haskell (.hs):

-- Soma os quadrados de 2 numeros
doubleUs :: Int -> Int -> Int   
doubleUs x y = x^2 + y^2
  
-- Verifica se um numero eh par (mod retorna resto da divisao inteira)
isEven :: Int -> Bool
isEven n = if mod n 2 == 0 then True else False
  
-- Gera um numero a partir de um caracter
encodeMe :: Char -> Int
encodeMe c 
  | c == 'S'  = 0
  | c == 'N'  = 1
  | otherwise = 2
  
-- Calcula o quadrado do primeiro elemento da lista
doubleFirst :: [Int] -> Int
doubleFirst lis = (head lis)^2

--2) Abra um interpretador Haskell e teste as funções em cada um dos casos abaixo, observando alguns erros que podem ocorrer:

--doubleUs (2+1) 6
--doubleUs 'A' 1
--isEven 8
--isEven 9
--isEven 8.1
--encodeMe 'S'
--encodeMe "S"
--doubleFirst [-3,4,5]
--doubleFirst []

-- PROGRAMAÇÃO

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
add10 [] = [] 
add10 x =((head x) + 10) : add10 (tail x)

--4)Escreva uma função recursiva addComma, que adicione uma vírgula no final de cada string contida
-- numa lista. Dica: (1) Strings são listas de caracteres. (2) Para concatenar listas, use o operador ++.

addComma :: [String] -> [String]
addComma [] = [] 
addComma x =((head x) ++ ",") : addComma (tail x)
  
--5) Refaça os 2 exercícios anteriores usando a função de alta ordem 'map'.

--                                       3) refeita c/ map
add102 :: [Int] -> [Int]
add102 [] = [] 
add102 x = map (+10) x 

--                                       4)refeito c/ map
add :: [String] -> [String]
add [] = [] 
add x = map (++ ",") x


--6)Crie uma função htmlListItems :: [String] -> [String], que receba uma lista de strings e retorne outra lista contendo as strings formatadas 
--como itens de lista em HTML.Dica: use map e defina uma função auxiliar a ser aplicada a cada elemento. 

htmlListItens :: [String] -> [String]
htmlListItens [] = []
htmlListItens x = ( "<LI>" ++ head x ++ "</LI>" ) : htmlListItens(tail x)

--7) Crie uma função recursiva charFound :: Char -> String -> Bool, que verifique se o caracter (primeiro argumento) 
--está contido na string (segundo argumento).

charFound :: Char -> String -> Bool
charFound x y 
		| y == [] = False
		| x == head y = True
		| x /= head y = charFound x (tail y)

--8) Reescreva a função anterior sem recursão, usando outras funções pré-definidas já vistas em aula.

charFound2 :: Char -> String -> Bool
charFound2 x y = if (filter(== x)y) == [] then False else True

--9) Use a função de alta ordem 'zipWith' para produzir uma função que obtenha as diferenças, par 
--a par, dos elementos de duas listas. Por exemplo: para listas de entrada [1,2,3,4] e [2,2,1,1],
-- o resultado será [-1,0,2,3].
 
difAB :: [Int] -> [Int] -> [Int]
difAB [] [] = [] 
difAB x y = zipWith (-) x y



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



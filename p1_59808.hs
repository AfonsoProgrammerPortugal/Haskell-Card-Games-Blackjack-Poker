--A
valor = ['A','2','3','4','5','6','7','8','9','T','J','Q','K']
naipe = ['S','H','D','C']

baralho :: [String]
baralho = [x:[y] | x <- valor, y <- naipe]

--B
pontos :: [Char] -> [Int]
pontos (x:_)
    | x == 'A' = [1,11]
    | x `elem` ['2'..'9'] = [fromEnum x - fromEnum '0']
    | x `elem` ['T','J','Q','K'] = [10]
    | otherwise = error "Não é um valor"

combinacoesBlackJack :: Int -> [(String,String)]
combinacoesBlackJack n = [(x,y)| x <- baralho, y <- baralho,
                                 x < y,
                                 p <- somaPontos (x,y),
                                 p == n]

somaPontos :: (String,String) -> [Int]
somaPontos (x,y) = [a+b | a <- pontos x, b <- pontos y]

--C
fullHouse :: [[String]]
fullHouse = [a ++ b| x <- valor,
                     y <- valor,
                     x /= y,
                     a <- lenght3Combinations (listSameValue x),
                     b <- lenght2Combinations (listSameValue y)]

listSameValue :: Char  -> [String]
listSameValue x = [a | a <- baralho, head a == x]

lenght3Combinations :: Ord a => [a] -> [[a]]
lenght3Combinations xs = [[x, y, z] | x <- xs, y <- xs, x < y, z <- xs, y < z]

lenght2Combinations :: Ord a => [a] -> [[a]]
lenght2Combinations xs = [[x, y] | x <- xs, y <- xs, x < y]
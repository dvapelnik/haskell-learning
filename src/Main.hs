module Main where

--Реализуйте функцию parsePerson, которая разбирает строки вида
--firstName = John\nlastName = Connor\nage = 30 и возвращает либо результат типа Person, либо ошибку типа Error.

-- Строка, которая подается на вход, должна разбивать по символу '\n' на список строк,
--каждая из которых имеет вид X = Y. Если входная строка не
--имеет указанный вид, то функция должна возвращать ParsingError.
--Если указаны не все поля, то возвращается IncompleteDataError.
--Если в поле age указано не число, то возвращается IncorrectDataError str, где str — содержимое поля age.
--Если в строке присутствуют лишние поля, то они игнорируются.
--Time Limit: 5 seconds
--Memory Limit: 256 MB


--parsePerson "firstName = John\nlastName = Connor\nage = 30"
--parsePerson "firstName = John Smith\nlastName = Connor\nage = 30\nasde=as11"
--parsePerson "firstName=Barbarian\nlastName=Conn On\nage=30"

import Data.Char

data Error = ParsingError | IncompleteDataError | IncorrectDataError String deriving Show
data Person = Person { firstName :: String, lastName :: String, age :: Int } deriving Show

parsePerson :: String -> Either Error Person
parsePerson l = if not (hasEq $ lines l)
                then Left ParsingError
                else
                    if not (hasFields l)
                    then Left IncompleteDataError
                    else
                        if not (thisDigit $ strJust $ ageString l)
                        then Left (IncorrectDataError (strJust (ageString l)))
                        else Right (Person{ firstName = strJust $ lookup "firstName" $ list2HashList l, lastName = strJust $ lookup "lastName" $ list2HashList l, age = read (strJust $ ageString l)::Int})

sumStrings acc [] = acc
sumStrings acc (x:xs) = sumStrings (acc ++ x ++" ") xs

thisDigit xs = all isDigit xs

strJust (Just x) = x
strJust (Nothing) = ""

ageString l = lookup "age" $ list2HashList l

hasFields :: String -> Bool
hasFields l = if (length (checkFields l) == 0)
              then True
              else False

checkFields l = filter (== Nothing) [lookup "firstName" $ list2HashList l, lookup "lastName" $ list2HashList l, lookup "age" $ list2HashList l]

list2HashList :: String -> [(String, String)]
list2HashList l = map l2h (lines l) where
                  l2h str = l2hM (buildPair str)
                  buildPair str = ((take (findEqN str) str), (drop ((findEqN str)+1) str))
                  l2hM p = if ((' ' == (last $ fst p)) && (' ' == (head $ snd p)))
                           then (init $ fst p, tail $ snd p)
                           else p

hasEq :: [String] -> Bool
hasEq l = foldl1 (&&) (map findEq l)


findEq :: String -> Bool
findEq [] = False
findEq (x:xs) = if (x == '=')
                then True
                else findEq xs

findEqN :: String -> Int
findEqN l = findEqN' 0 l

findEqN' :: Int -> String -> Int
findEqN' acc [] = 0
findEqN' acc (x:xs) = if (x == '=')
                     then acc
                     else findEqN' (acc+1) xs

main = do
    print $ parsePerson "firstName = John\nlastName = Connor\nage = 30"
    print $ parsePerson "firstName = John\nlastName = Connor\nage = as"
    print $ parsePerson "firstName = John\nlastName= Connor\nage = as"
    print $ parsePerson "firstName = John"
    print $ parsePerson "firstName=Barbarian\nlastName=Conn On\nage=30"
    print $ parsePerson "firstName = John Smith\nlastName = Connor\nage = 30\nasde=as11"

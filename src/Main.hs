module Main where

data Person = Person { firstName :: String, lastName :: String, age :: Int }
    deriving Show

abbrFirstName :: Person -> Person
abbrFirstName p =
    let
        p' | (length p'') > 1 = [head $ p''] ++ ['.']
           | otherwise        = p''
        p'' = firstName p
    in
    p {firstName = p'}

main = do
    print . abbrFirstName $ Person {firstName = "John", lastName = "Dou", age = 42}
    print . abbrFirstName $ Person {firstName = "J", lastName = "Dou", age = 42}

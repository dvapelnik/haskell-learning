module Main where

myLength :: [a] -> Int
myLength [] = 0
myLength [_] = 1
myLength x = length x

myLength' :: [a] -> Int
myLength' [] = 0
myLength' [_] = 1
myLength' (_:xs) = 1 + myLength' xs

main = do
    print $ myLength []
    print $ myLength [1]
    print $ myLength [1..3]
    print $ myLength' []
    print $ myLength' [1]
    print $ myLength' [1..3]
    print $ foldl (\n _ -> n + 1) 0 [1..4]
    print $ foldr (\_ n -> n + 1) 0 [1..5]
    print $ foldr (\_ -> (+1)) 0 [1..6]
    print $ foldr ((+) . (const 1)) 0 [1..7]
    print $ foldr (const (+1)) 0 [1..8]
    print $ foldl (const . (+1)) 0 [1..9]
    print . sum $ map (\_ -> 1) [1..10]

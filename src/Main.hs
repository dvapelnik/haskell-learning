module Main where

lastElem :: [a] -> a
lastElem = foldl1 (\x y -> y)

main = do
    print . show $ lastElem [1..10]
    print . show $ lastElem ['a'..'z']
    print . show $ lastElem [0]
    print . show $ lastElem [0, 1]

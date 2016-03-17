module Main where

lengthList :: [a] -> Int
lengthList = foldr (\x s -> s + 1) 0

main = do
    print . show $ lengthList [7,6,5]

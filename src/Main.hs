module Main where

sumOdd :: [Integer] -> Integer
sumOdd = foldr f 0
    where f x s | odd x     = x + s
                | otherwise = s

main = do
    print . show $ sumOdd [2,5,30,37]

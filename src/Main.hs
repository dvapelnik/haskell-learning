module Main where

import Data.Char

fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci(n - 1) + fibonacci(n - 2)

fibonacciList :: Int -> [Int]
fibonacciList n | n == 0 = [0]
                | n == 1 = [0, 1]
fibonacciList n = fibonacciList (n - 1) ++ [fibonacci n]

main = putStrLn . show . fibonacciList $ 10
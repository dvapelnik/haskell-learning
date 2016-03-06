module Main where

import Data.Char

fibonacci n | n == 0 || n == 1 = n
            | n > 0 = fibonacci(n - 1) + fibonacci(n - 2)
            | n < 0 = fibonacci(n + 2) - fibonacci(n + 1)

main = putStrLn . show . fibonacci $ -10
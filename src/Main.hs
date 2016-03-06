module Main where

import Data.Char

factorial n | n == 0 = 1
            | n > 0 = n * factorial (n - 1)

main = putStrLn . show . factorial $ 4
module Main where

import Data.Char

doubleFact 0 = 1
doubleFact 1 = 1
doubleFact n = n * doubleFact (n - 2)


main = putStrLn . show . doubleFact $ 8
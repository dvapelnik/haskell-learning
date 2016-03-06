module Main where

infixl 6 |-|
(|-|) a b = abs(a - b)

main = putStrLn . show $ 5 |-| 7
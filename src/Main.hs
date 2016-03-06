module Main where

sign x | x == 0 = 0
       | x < 0 = -1
       | x > 0 = 1

main = putStrLn . show . sign $ 100
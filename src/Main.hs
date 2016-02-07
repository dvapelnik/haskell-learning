module Main where

import MyBoolean
import Calculus
import ClassOfGroup

main :: IO ()

main = do
    putStrLn ( show $ add 2 2)
    putStrLn ( show $ diff 1 5)
    putStrLn ( show $ division 1 2 )
    putStrLn ( show $ multiple 2 4 )
    putStrLn ( show $ power 2 10 )
    print(take 2 (replicate 100 "127.0.0.1"))
    print(take 4 (repeat "127.0.0.1"))

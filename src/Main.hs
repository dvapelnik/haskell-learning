module Main where

import MyBoolean
import Calculus

main :: IO ()

main = do
    putStrLn ( show $ add 2 2)
    putStrLn ( show $ diff 1 5)
    putStrLn ( show $ division 1 2 )
    putStrLn ( show $ multiple 2 4 )
    putStrLn ( show $ power 2 10 )

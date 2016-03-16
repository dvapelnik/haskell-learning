
module Main where

import Data.Char

fibStream :: [Integer]
fibStream = 0 : 1 : zipWith (+) fibStream (tail fibStream)

main = do
    print . show $ take 10 $ fibStream
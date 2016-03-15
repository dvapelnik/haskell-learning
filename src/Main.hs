
module Main where

import Data.Char

max3 :: Ord a => [a] -> [a] -> [a] -> [a]
max3 = zipWith3 (\x -> max . max x)

main = do
    print . show $ max3 [7,2,9] [3,6,8] [1,8,10]
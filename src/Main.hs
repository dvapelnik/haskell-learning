module Main where

import Data.Char

dist :: (Double, Double) -> (Double, Double) -> Double
dist p1 p2 = sqrt $ (fst(p2) - fst(p1))^2 + (snd(p2) - snd(p1))^2

main = putStrLn . show $ dist (1, 1) (1, 3)
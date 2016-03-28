module Main where

data Point = Point Double Double

data Shape = Circle Double | Rectangle Double Double

area :: Shape -> Double
area shape =
    case shape of Circle r -> pi * r^2
                  Rectangle a b -> a * b

main = do
    undefined

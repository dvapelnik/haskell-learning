
module Main where

squares'n'cubes :: Num a => [a] -> [a]
squares'n'cubes a =
    let
        squares = map (^2) a
        cubes = map (^3) a
    in
    combine squares cubes
    where
        combine :: [a] -> [a] -> [a]
        combine [] [] = []
        combine (x:xs) (y:ys) = x:y:combine xs ys

main = do
    print . show $ squares'n'cubes [3,4,5]

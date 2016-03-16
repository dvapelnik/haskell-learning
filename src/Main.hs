module Main where

data Odd = Odd Integer
    deriving (Eq, Show)

perms :: (Ord a, Num a) => [a] -> [[a]]
perms xs = [[x,y,z] | x <- xs, y <- xs, z <- xs, x > 1, y < 2, z == 1 || z == 0 ]

main = do
    print . show $ perms [0, 1, 2]
    print . show $
        let
            ints = take 20 $ [1..]
        in
        [(x,y,z) | x <- ints, y <- ints, z <- ints, x^2 + y^2 == z^2, x<=y]
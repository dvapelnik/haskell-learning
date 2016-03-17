module Main where

sumPositiveSquares :: [Integer] -> Integer
sumPositiveSquares xs = foldr (\x y -> if x > 0 then x^2 + y else y) 0 xs

sumPositiveSquares' :: [Integer] -> Integer
sumPositiveSquares' xs = foldr f 0 xs
    where
        f x sum | x > 0     = x^2 + sum
                | otherwise = sum

main = do
    print . show $ sumPositiveSquares  [1, -2, 2, 5, -10]
    print . show $ sumPositiveSquares' [1, -2, 2, 5, -10]

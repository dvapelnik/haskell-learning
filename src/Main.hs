{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Main where

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = ltxs ++ [x] ++ gtxs
    where
        ltxs = qsort $ filter (< x) xs
        gtxs = qsort $ filter (>= x) xs

qsort' [] = []
qsort' (x:xs) = qsort' [y | y <- xs, y < x] ++ [x] ++ qsort' [y | y <- xs, y >= x]

main = do
    print . show $ qsort [1,3,2,5]

{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Main where

sum3 :: Num a => [a] -> [a] -> [a] -> [a]
sum3 (x:xs) (y:ys) (z:zs) = (x+y+z): sum3 xs ys zs
sum3  []     (y:ys)   (z:zs) = (y+z): sum3 [] ys zs
sum3 (x:xs)   []      (z:zs) = (x+z): sum3 xs [] zs
sum3 (x:xs)  (y:ys)    []    = (x+y): sum3 xs ys []
sum3 xs       []       []    = xs
sum3 []       ys       []    = ys
sum3 []       []       zs    = zs

main = do
    print . show $ sum3 [1,2,3] [4,5] [6]

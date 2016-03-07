{-# LANGUAGE BangPatterns #-}

module Main where

import Data.Function

--on :: (b -> b -> c) -> (a -> b) -> a -> a -> c
--on op f x y = f x `op` f y

on3 :: (b -> b -> b -> c) -> (a -> b) -> a -> a -> a -> c
on3 op f x y z = op (f x) (f y) (f z)

sum3squares = (\x y z -> x+y+z) `on3` (^2)

main = do
    print $ sum3squares 1 2 3

{-# LANGUAGE BangPatterns #-}

module Main where

fibonacci n | n == 0  = 0
            | n == 1  = 1
            | n > 0   = goPositive n (0, 1)
            | n < 0   = goNegative n (0, 1)
        where
            goPositive !n (!a, !b) | n==0      = a
                                   | otherwise = goPositive (n-1) (b, a+b)
            goNegative !n (!a, !b) | n==0      = a
                                   | otherwise = goNegative (n+1) (b, a-b)

main = putStrLn . show . fibonacci $ -10
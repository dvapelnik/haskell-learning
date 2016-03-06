{-# LANGUAGE BangPatterns #-}

module Main where

seqA n | n == 0 = 1
       | n == 1 = 2
       | n == 2 = 3
       | n >= 2 =
            let
                seqA' 0 p q r = r
                seqA' n p q r = seqA' (n-1) q r (r+q-2*p)
            in
            seqA' (n-2) 1 2 3

main = putStrLn . show . seqA $ 301
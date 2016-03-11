{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Main where

nTimes :: a -> Int -> [a]
nTimes item n | n == 0 = []
              | n == 1 = [item]
              | n < 0 = error "n should be greater or equal to zero"
              | otherwise = item : nTimes item (n-1)

main = do
    print . show $ nTimes 42 3

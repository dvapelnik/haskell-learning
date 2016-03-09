{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Main where

avg :: Int -> Int -> Int -> Double
avg a b c =
    (aD + bD + cD) / 3
    where
        aD = fromIntegral a :: Double
        bD = fromIntegral b :: Double
        cD = fromIntegral c :: Double

main = do
    print . show $ avg 3 4 8

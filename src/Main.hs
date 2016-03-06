{-# LANGUAGE BangPatterns #-}

module Main where

import Data.Function

sumSquares = (+) `on` (^2)

multSecond = g `on` h

g = (*)

h = snd

main = do
    print $ sumSquares 2 4
    print $ multSecond ('A',2) ('E',7)
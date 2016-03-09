{-# LANGUAGE BangPatterns #-}

module Main where

import Data.Function

doItYourself = f . g . h

f = logBase 2

g = flip (^) 3

h = max 42

main = do
    print $ doItYourself 4

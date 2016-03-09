{-# LANGUAGE BangPatterns #-}

module Main where

import Data.Function

main = do
    print . show . (uncurry (flip (,))) $  (1,'A')

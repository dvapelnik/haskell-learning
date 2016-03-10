{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Main where

addTwoElements :: a -> a -> [a] -> [a]
addTwoElements x y lst = x : y : lst

main = do
    print . show $ addTwoElements 2 12 [85,0,6]

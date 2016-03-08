{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE NoMonomorphismRestriction #-}

module Main where

-- (.) operator

compose f g x = f (g x)

main :: IO ()
main = do
    print $ compose (\x -> x + 10) (\x -> x - 2) 10
    print $ compose (\x -> x + 10) (\x -> x - 2) $ 10
    print $ (\x -> x + 10) `compose` (\x -> x - 2) $ 10
    print $ (\x -> x + 10) . (\x -> x - 2) $ 10

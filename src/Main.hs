module Main where

data Log a = Log [String] a deriving Show

toLogger :: (a -> b) -> String -> (a -> Log b)
toLogger f msg a = Log [msg] (f a)

execLoggers :: a -> (a -> Log b) -> (b -> Log c) -> Log c
execLoggers x f g =
    let
        Log ys y = f x
        Log zs z = g y
    in
    Log (ys++zs) z

main = do
    undefined

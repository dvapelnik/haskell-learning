module Main where

main :: IO ()

main = putStr "dasdasd"

true :: Bool
true = True

false :: Bool
false = False

not :: Bool -> Bool
not True = False
not False = True

and :: Bool -> Bool -> Bool
and False _ = False
and True x = x

or :: Bool -> Bool -> Bool
or True _ = True
or False x = x

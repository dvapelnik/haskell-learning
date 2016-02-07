module Main where

main :: IO ()

main = putStr "dasdasd"

data Bool = True | False

true :: Main.Bool
true = Main.True

false :: Main.Bool
false = Main.False

not :: Main.Bool -> Main.Bool
not Main.True = Main.False
not Main.False = Main.True

and :: Main.Bool -> Main.Bool -> Main.Bool
and Main.False _ = Main.False
and Main.True x = x

or :: Main.Bool -> Main.Bool -> Main.Bool
or Main.True _ = Main.True
or Main.False x = x

module Main where

infixl 6 *+*
(*+*) a b = a * a + b * b

main = putStrLn . show $ 1 + 3 *+* 2 * 2
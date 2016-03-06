module Main where

import Data.Char

twoDigits2Int :: Char -> Char -> Int
twoDigits2Int dec un =
    if isDigit dec && isDigit un
    then
        digitToInt dec * 10 + digitToInt un
    else
        100

main = putStrLn . show $ twoDigits2Int '9' '5'

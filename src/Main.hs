module Main where

import Data.Char(isDigit)

findDigit :: [Char] -> Maybe Char
findDigit xs | xs == []  = Nothing
             | otherwise = f xs
    where
        f x'@(x:xs) | isDigit x = Just x
                    | xs == []  = Nothing
                    | otherwise = f xs

main = do
    print $ findDigit ""
    print $ findDigit "qwer54"
    print $ findDigit "45sadsd"
    print $ findDigit "asdsdadasd"
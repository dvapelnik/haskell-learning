module Main where

import Data.Char

data Token = Number Int | Plus | Minus | LeftBrace | RightBrace
    deriving (Eq, Show)

asToken :: String -> Maybe Token
asToken s | s == ""       = Nothing
          | s == "+"      = Just Plus
          | s == "-"      = Just Minus
          | s == "("      = Just LeftBrace
          | s == ")"      = Just RightBrace
          | all isDigit s = Just . Number . stringToInt $ s
          | otherwise     = Nothing
            where
                pairToDec (x, y) = 10^x * y
                stringToInt = foldr (+) 0 . map pairToDec . map (\(x,y) -> (x, digitToInt y)) . zip [0..] . reverse

tokenize :: String -> Maybe [Token]
tokenize input | input == "" = Just []
               | otherwise   = fn . words $ input
                    where
                        fn []     = Just []
                        fn (x:xs) = do
                            t <- asToken x
                            ts <- fn xs
                            return (t:ts)

main = do
    undefined

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
tokenize input =
    if length filtered == length res
    then Just $ (map (\(Just t) -> t)) res
    else Nothing
    where
        filtered = filter (\mb -> case mb of {Just a -> True; Nothing -> False}) $ res
        res = map asToken . words $ input

main = do
    undefined
